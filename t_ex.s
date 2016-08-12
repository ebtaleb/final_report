	.text
	.file	"t.c"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Linfo_string:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.text
	.globl	f
	.align	16, 0x90
	.type	f,@function
f:                                      # @f
.Lfunc_begin0:
	.file	1 "t.c"
	.loc	1 4 0                   # t.c:4:0
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	.loc	1 5 5 prologue_end      # t.c:5:5
.Ltmp3:
	movl	-4(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -8(%rbp)
	.loc	1 8 9                   # t.c:8:9
.Ltmp4:
	movl	$18, -16(%rbp)
	.loc	1 9 9                   # t.c:9:9
	movl	-12(%rbp), %edi
	addl	-16(%rbp), %edi
	movl	%edi, -12(%rbp)
.Ltmp5:
	.loc	1 11 5                  # t.c:11:5
	movl	$1, -20(%rbp)
	.loc	1 13 10                 # t.c:13:10
.Ltmp6:
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 13 10 discriminator 2 # t.c:13:10
.Ltmp7:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_4
.Ltmp8:
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str, %rdi
	.loc	1 14 9                  # t.c:14:9
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -24(%rbp)         # 4-byte Spill
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	.loc	1 13 28                 # t.c:13:28
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.Ltmp9:
.LBB0_4:
	.loc	1 15 1                  # t.c:15:1
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp10:
.Ltmp11:
	.size	f, .Ltmp11-f
.Lfunc_end0:
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.loc	1 19 0                  # t.c:19:0
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %edi
	movl	$0, -4(%rbp)
	.loc	1 20 5 prologue_end     # t.c:20:5
.Ltmp15:
	callq	f
	movl	$0, %eax
	.loc	1 21 5                  # t.c:21:5
	addq	$16, %rsp
	popq	%rbp
	retq
.Ltmp16:
.Ltmp17:
	.size	main, .Ltmp17-main
.Lfunc_end1:
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i = %d\n"
	.size	.L.str, 8

	.text
.Ldebug_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 3.5.2-3ubuntu1 (tags/RELEASE_352/final) (based on LLVM 3.5.2)"
.Linfo_string1:
	.asciz	"t.c"
.Linfo_string2:
	.asciz	"/home/jmbto/ocpwork/final_report"
.Linfo_string3:
	.asciz	"f"
.Linfo_string4:
	.asciz	"main"
.Linfo_string5:
	.asciz	"int"
.Linfo_string6:
	.asciz	"x"
.Linfo_string7:
	.asciz	"local"
.Linfo_string8:
	.asciz	"i"
.Linfo_string9:
	.asciz	"j"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	179                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xac DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	.Lfunc_begin0           # DW_AT_low_pc
.Lset0 = .Lfunc_end1-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Lset0
	.byte	2                       # Abbrev [2] 0x2a:0x6b DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
.Lset1 = .Lfunc_end0-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Lset1
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	3                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	3                       # Abbrev [3] 0x40:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	3                       # DW_AT_decl_line
	.long	175                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x4e:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	175                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x5c:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	175                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x6a:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	175                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x78:0x1c DW_TAG_lexical_block
	.quad	.Ltmp4                  # DW_AT_low_pc
.Lset2 = .Ltmp5-.Ltmp4                  # DW_AT_high_pc
	.long	.Lset2
	.byte	4                       # Abbrev [4] 0x85:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	175                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x95:0x1a DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
.Lset3 = .Lfunc_end1-.Lfunc_begin1      # DW_AT_high_pc
	.long	.Lset3
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.long	175                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xaf:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_ranges,"",@progbits
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
.Lset4 = .LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
	.long	.Lset4
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset5 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset5
	.long	149                     # DIE offset
	.asciz	"main"                  # External Name
	.long	42                      # DIE offset
	.asciz	"f"                     # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
.Lset6 = .LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
	.long	.Lset6
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset7 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset7
	.long	175                     # DIE offset
	.asciz	"int"                   # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.ident	"Ubuntu clang version 3.5.2-3ubuntu1 (tags/RELEASE_352/final) (based on LLVM 3.5.2)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
