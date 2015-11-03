typedef uint16_t Elf32_Half;
typedef uint16_t Elf64_Half;

/* Types for signed and unsigned 32-bit quantities.  */
typedef uint32_t Elf32_Word;
typedef	int32_t  Elf32_Sword;
typedef uint32_t Elf64_Word;
typedef	int32_t  Elf64_Sword;

/* Types for signed and unsigned 64-bit quantities.  */
typedef uint64_t Elf32_Xword;
typedef	int64_t  Elf32_Sxword;
typedef uint64_t Elf64_Xword;
typedef	int64_t  Elf64_Sxword;

/* Type of addresses.  */
typedef uint32_t Elf32_Addr;
typedef uint64_t Elf64_Addr;

/* Type of file offsets.  */
typedef uint32_t Elf32_Off;
typedef uint64_t Elf64_Off;

/* Type for section indices, which are 16-bit quantities.  */
typedef uint16_t Elf32_Section;
typedef uint16_t Elf64_Section;

/* Type for version symbol information.  */
typedef Elf32_Half Elf32_Versym;
typedef Elf64_Half Elf64_Versym;
#define EI_NIDENT	16
typedef struct elf32hdr {
	unsigned char	e_ident[EI_NIDENT]; /* Identification info */
	Elf32_Half	e_type;		/* Object file type */
	Elf32_Half	e_machine;	/* Architecture */
	Elf32_Word	e_version;	/* Object file version */
	Elf32_Addr	e_entry;	/* Entry address */
	Elf32_Off	e_phoff;	/* Program header table offset */
	Elf32_Off	e_shoff;	/* Section header table offset */
	Elf32_Word	e_flags;	/* Processor-specific flags */
	Elf32_Half	e_ehsize;	/* ELF header size in bytes */
	Elf32_Half	e_phentsize;	/* Program header table entry size */
	Elf32_Half	e_phnum;	/* Program header table entry count */
	Elf32_Half	e_shentsize;	/* Section header table entry size */
	Elf32_Half	e_shnum;	/* Section header table entry count */
	Elf32_Half	e_shstrndx;	/* Section header string table index */
} elf32hdr_t;

/* Program segment header.  */

typedef struct elf32_phdr {
	Elf32_Word	p_type;		/* Segment type */
	Elf32_Off	p_offset;	/* Segment file offset */
	Elf32_Addr	p_vaddr;	/* Segment virtual address */
	Elf32_Addr	p_paddr;	/* Segment physical address */
	Elf32_Word	p_filesz;	/* Segment size in file */
	Elf32_Word	p_memsz;	/* Segment size in memory */
	Elf32_Word	p_flags;	/* Segment flags */
	Elf32_Word	p_align;	/* Segment alignment */
} elf32_phdr_t;
