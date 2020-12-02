OUTPUT_ARCH(mips)
ENTRY(__export_parasite_head_start) /*指定了程序入口函数*/
SECTIONS
{
	. = 0x120000000; /*0xfff70c4000;  指定当前虚拟地址*/
	tinytext : {  
		*(.head.text)
        	*(.text*)
		*(.data)
		*(.rodata)
	}

	/DISCARD/ : { /*释义：需要丢弃的输入段*/
	*(.comment)
	*(.pdr)
	}

/* Parasite args should have 4 bytes align, as we have futex inside. */
. = ALIGN(4);
__export_parasite_args = .;
}
