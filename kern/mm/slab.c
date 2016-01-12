
/*
 * 	Merge from Yuxin Chen.
 */


#include slab.h

static u32 cache_size[POOL_NUM] =  {4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096};
static u32 cache_shift[POOL_NUM] = {2, 3,  4,  5,  6,   7,   8,   9,   10,   11,   12};

u32* get_cache_size() {
	return cache_size;
}

u32* get_cache_shift() {
	return cache_shift;
}

cache_t** get_pools() {
	return pools;
}

void insert_slab(u32 pool_id, u8* addr) {
	for(u8 *cache = addr + (SLAB_SIZE << PAGE_SHIFT) - cache_size[pool_id];
			cache >= addr;
			cache -= cache_size[pool_id]){
		((cache_t*)cache)->next = pools[pool_id];
		pools[pool_id] = cache;
	}
}

void* alloc_slab_for_pool(u32 pool_id) {
	u8* addr = (cache_t*)alloc_pages(SLAB_SIZE);
#ifdef DEBUG
	uart_spin_puts("MM/slab: require more slab for pool ");
	uart_spin_puthex(pool_id);
#endif //DEBUG
	if(addr != NULL) insert_slab(pool_id, addr);
	return addr;
}

void init_slabs() {
	for(u32 i = 0; i < POOL_NUM; i++) {
		pools[i] = NULL;
		alloc_slab_for_pool(i);
	}
}

void* alloc_obj(u32 obj_size) {
	for(u32 i = 0; i < POOL_NUM; i++) {
		if(cache_size[i] >= obj_size) {
			if(pools[i] == NULL) {
				if(alloc_slab_for_pool(i) == NULL) return NULL;
			} 
			void *addr = pools[i];
			pools[i] = pools[i]->next;
			return addr;
		}
	}
	return NULL;
}

void free_obj(void* addr, u32 obj_size) {
	for(u32 i = 0; i < POOL_NUM; i++) {
		if(cache_size[i] >= obj_size) {
			cache_t *cache = addr;
			cache->next = pools[i];
			pools[i] = cache;
			return;
		}
	}
	uart_spin_puts("MM/slab: PANIC should not execute this command!");
	while(1);
}
