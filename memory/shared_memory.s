	.file	"shared_memory.cc"
# GNU C++17 (Debian 12.2.0-14) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.26-GMP

# warning: MPFR header version 4.1.0 differs from library version 4.2.0.
# warning: MPC header version 1.2.1 differs from library version 1.3.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables
	.text
	.section	.text._ZSt23__is_constant_evaluatedv,"axG",@progbits,_ZSt23__is_constant_evaluatedv,comdat
	.weak	_ZSt23__is_constant_evaluatedv
	.type	_ZSt23__is_constant_evaluatedv, @function
_ZSt23__is_constant_evaluatedv:
.LFB1:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# /usr/include/x86_64-linux-gnu/c++/12/bits/c++config.h:523:     return __builtin_is_constant_evaluated();
	movl	$0, %eax	#, _1
# /usr/include/x86_64-linux-gnu/c++/12/bits/c++config.h:527:   }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	_ZSt23__is_constant_evaluatedv, .-_ZSt23__is_constant_evaluatedv
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB119:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __s, __s
# /usr/include/c++/12/bits/char_traits.h:392: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	#
# /usr/include/c++/12/bits/char_traits.h:392: 	if (std::__is_constant_evaluated())
	testb	%al, %al	# retval.0_5
	je	.L4	#,
# /usr/include/c++/12/bits/char_traits.h:393: 	  return __gnu_cxx::char_traits<char_type>::length(__s);
	movq	-8(%rbp), %rax	# __s, tmp85
	movq	%rax, %rdi	# tmp85,
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc	#
# /usr/include/c++/12/bits/char_traits.h:393: 	  return __gnu_cxx::char_traits<char_type>::length(__s);
	jmp	.L5	#
.L4:
# /usr/include/c++/12/bits/char_traits.h:395: 	return __builtin_strlen(__s);
	movq	-8(%rbp), %rax	# __s, tmp87
	movq	%rax, %rdi	# tmp87,
	call	strlen@PLT	#
# /usr/include/c++/12/bits/char_traits.h:395: 	return __builtin_strlen(__s);
	nop	
.L5:
# /usr/include/c++/12/bits/char_traits.h:396:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE119:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"text"
.LC1:
	.string	""
	.text
	.globl	main
	.type	main, @function
main:
.LFB1761:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1761
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
# shared_memory.cc:4:   std::string a = "text";
	leaq	-18(%rbp), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZNSaIcEC1Ev@PLT	#
	leaq	-18(%rbp), %rdx	#, tmp87
	leaq	-64(%rbp), %rax	#, tmp88
	leaq	.LC0(%rip), %rcx	#, tmp89
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp88,
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_	#
.LEHE0:
# shared_memory.cc:4:   std::string a = "text";
	leaq	-18(%rbp), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	_ZNSaIcED1Ev@PLT	#
# shared_memory.cc:5:   std::string b = "";
	leaq	-17(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	_ZNSaIcEC1Ev@PLT	#
	leaq	-17(%rbp), %rdx	#, tmp92
	leaq	-96(%rbp), %rax	#, tmp93
	leaq	.LC1(%rip), %rcx	#, tmp94
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp93,
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_	#
.LEHE1:
	leaq	-17(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_ZNSaIcED1Ev@PLT	#
# shared_memory.cc:6:   b = a;
	leaq	-64(%rbp), %rdx	#, tmp96
	leaq	-96(%rbp), %rax	#, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT	#
.LEHE2:
# shared_memory.cc:7:   return 0;
	movl	$0, %ebx	#, _13
# shared_memory.cc:8: }
	leaq	-96(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT	#
	leaq	-64(%rbp), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT	#
	movl	%ebx, %eax	# _13, <retval>
	jmp	.L15	#
.L12:
# shared_memory.cc:4:   std::string a = "text";
	movq	%rax, %rbx	#, tmp102
	leaq	-18(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNSaIcED1Ev@PLT	#
	movq	%rbx, %rax	# tmp102, D.50752
	movq	%rax, %rdi	# D.50752,
.LEHB3:
	call	_Unwind_Resume@PLT	#
.L13:
# shared_memory.cc:5:   std::string b = "";
	movq	%rax, %rbx	#, tmp105
	leaq	-17(%rbp), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNSaIcED1Ev@PLT	#
	jmp	.L10	#
.L14:
# shared_memory.cc:8: }
	movq	%rax, %rbx	#, tmp109
	leaq	-96(%rbp), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT	#
.L10:
	leaq	-64(%rbp), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT	#
	movq	%rbx, %rax	# tmp104, D.50753
	movq	%rax, %rdi	# D.50753,
	call	_Unwind_Resume@PLT	#
.LEHE3:
.L15:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1761:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1761:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1761-.LLSDACSB1761
.LLSDACSB1761:
	.uleb128 .LEHB0-.LFB1761
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L12-.LFB1761
	.uleb128 0
	.uleb128 .LEHB1-.LFB1761
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L13-.LFB1761
	.uleb128 0
	.uleb128 .LEHB2-.LFB1761
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L14-.LFB1761
	.uleb128 0
	.uleb128 .LEHB3-.LFB1761
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1761:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB1762:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __p, __p
# /usr/include/c++/12/bits/char_traits.h:185:       std::size_t __i = 0;
	movq	$0, -8(%rbp)	#, __i
# /usr/include/c++/12/bits/char_traits.h:186:       while (!eq(__p[__i], char_type()))
	jmp	.L17	#
.L18:
# /usr/include/c++/12/bits/char_traits.h:187:         ++__i;
	addq	$1, -8(%rbp)	#, __i
.L17:
# /usr/include/c++/12/bits/char_traits.h:186:       while (!eq(__p[__i], char_type()))
	movb	$0, -9(%rbp)	#, D.45712
# /usr/include/c++/12/bits/char_traits.h:186:       while (!eq(__p[__i], char_type()))
	movq	-24(%rbp), %rdx	# __p, tmp87
	movq	-8(%rbp), %rax	# __i, tmp88
	addq	%rax, %rdx	# tmp88, _1
# /usr/include/c++/12/bits/char_traits.h:186:       while (!eq(__p[__i], char_type()))
	leaq	-9(%rbp), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	movq	%rdx, %rdi	# _1,
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_	#
	xorl	$1, %eax	#, retval.1_10
	testb	%al, %al	# retval.1_10
	jne	.L18	#,
# /usr/include/c++/12/bits/char_traits.h:188:       return __i;
	movq	-8(%rbp), %rax	# __i, _12
# /usr/include/c++/12/bits/char_traits.h:189:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1762:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB1871:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/12/bits/basic_string.h:192:       struct _Alloc_hider : allocator_type // TODO check __is_final
	movq	-8(%rbp), %rax	# this, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZNSaIcED2Ev@PLT	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1871:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.rodata
	.align 8
.LC2:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB2026:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2026
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# __s, __s
	movq	%rdx, -56(%rbp)	# __a, __a
# /usr/include/c++/12/bits/basic_string.h:635:       : _M_dataplus(_M_local_data(), __a)
	movq	-40(%rbp), %rbx	# this, _1
	movq	-40(%rbp), %rax	# this, tmp88
	movq	%rax, %rdi	# tmp88,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT	#
	movq	%rax, %rcx	#, _2
	movq	-56(%rbp), %rax	# __a, tmp89
	movq	%rax, %rdx	# tmp89,
	movq	%rcx, %rsi	# _2,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT	#
# /usr/include/c++/12/bits/basic_string.h:638: 	if (__s == 0)
	cmpq	$0, -48(%rbp)	#, __s
	jne	.L22	#,
# /usr/include/c++/12/bits/basic_string.h:639: 	  std::__throw_logic_error(__N("basic_string: "
	leaq	.LC2(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
.LEHB4:
	call	_ZSt19__throw_logic_errorPKc@PLT	#
.L22:
# /usr/include/c++/12/bits/basic_string.h:641: 	const _CharT* __end = __s + traits_type::length(__s);
	movq	-48(%rbp), %rax	# __s, tmp91
	movq	%rax, %rdi	# tmp91,
	call	_ZNSt11char_traitsIcE6lengthEPKc	#
# /usr/include/c++/12/bits/basic_string.h:641: 	const _CharT* __end = __s + traits_type::length(__s);
	movq	-48(%rbp), %rdx	# __s, tmp95
	addq	%rdx, %rax	# tmp95, tmp94
	movq	%rax, -24(%rbp)	# tmp94, __end
# /usr/include/c++/12/bits/basic_string.h:642: 	_M_construct(__s, __end, forward_iterator_tag());
	movq	-24(%rbp), %rdx	# __end, tmp96
	movq	-48(%rbp), %rcx	# __s, tmp97
	movq	-40(%rbp), %rax	# this, tmp98
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag	#
.LEHE4:
# /usr/include/c++/12/bits/basic_string.h:643:       }
	jmp	.L25	#
.L24:
	movq	%rax, %rbx	#, tmp99
	movq	-40(%rbp), %rax	# this, _4
	movq	%rax, %rdi	# _4,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	#
	movq	%rbx, %rax	# tmp99, D.50756
	movq	%rax, %rdi	# D.50756,
.LEHB5:
	call	_Unwind_Resume@PLT	#
.LEHE5:
.L25:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2026:
	.section	.gcc_except_table
.LLSDA2026:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2026-.LLSDACSB2026
.LLSDACSB2026:
	.uleb128 .LEHB4-.LFB2026
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L24-.LFB2026
	.uleb128 0
	.uleb128 .LEHB5-.LFB2026
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2026:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB2029:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __c1, __c1
	movq	%rsi, -16(%rbp)	# __c2, __c2
# /usr/include/c++/12/bits/char_traits.h:122:       { return __c1 == __c2; }
	movq	-8(%rbp), %rax	# __c1, tmp86
	movzbl	(%rax), %edx	# *__c1_4(D), _1
	movq	-16(%rbp), %rax	# __c2, tmp87
	movzbl	(%rax), %eax	# *__c2_5(D), _2
# /usr/include/c++/12/bits/char_traits.h:122:       { return __c1 == __c2; }
	cmpb	%al, %dl	# _2, _1
	sete	%al	#, _6
# /usr/include/c++/12/bits/char_traits.h:122:       { return __c1 == __c2; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2029:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB2066:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __s, __s
# /usr/include/c++/12/bits/basic_string.tcc:235: 	  explicit _Guard(basic_string* __s) : _M_guarded(__s) { }
	movq	-8(%rbp), %rax	# this, tmp82
	movq	-16(%rbp), %rdx	# __s, tmp83
	movq	%rdx, (%rax)	# tmp83, this_2(D)->_M_guarded
# /usr/include/c++/12/bits/basic_string.tcc:235: 	  explicit _Guard(basic_string* __s) : _M_guarded(__s) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2066:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB2069:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2069
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/12/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_5(D)->_M_guarded, _1
# /usr/include/c++/12/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	testq	%rax, %rax	# _1
	je	.L31	#,
# /usr/include/c++/12/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	-8(%rbp), %rax	# this, tmp85
	movq	(%rax), %rax	# this_5(D)->_M_guarded, _2
# /usr/include/c++/12/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	%rax, %rdi	# _2,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT	#
.L31:
# /usr/include/c++/12/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2069:
	.section	.gcc_except_table
.LLSDA2069:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2069-.LLSDACSB2069
.LLSDACSB2069:
.LLSDACSE2069:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2064:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# __beg, __beg
	movq	%rdx, -56(%rbp)	# __end, __end
# /usr/include/c++/12/bits/basic_string.tcc:221: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	movq	-56(%rbp), %rdx	# __end, tmp90
	movq	-48(%rbp), %rax	# __beg, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_	#
# /usr/include/c++/12/bits/basic_string.tcc:221: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	movq	%rax, -16(%rbp)	# _2, __dnew
# /usr/include/c++/12/bits/basic_string.tcc:223: 	if (__dnew > size_type(_S_local_capacity))
	movq	-16(%rbp), %rax	# __dnew, __dnew.2_3
# /usr/include/c++/12/bits/basic_string.tcc:223: 	if (__dnew > size_type(_S_local_capacity))
	cmpq	$15, %rax	#, __dnew.2_3
	jbe	.L33	#,
# /usr/include/c++/12/bits/basic_string.tcc:225: 	    _M_data(_M_create(__dnew, size_type(0)));
	leaq	-16(%rbp), %rcx	#, tmp92
	movq	-40(%rbp), %rax	# this, tmp93
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT	#
	movq	%rax, %rdx	#, _4
	movq	-40(%rbp), %rax	# this, tmp94
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# tmp94,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT	#
# /usr/include/c++/12/bits/basic_string.tcc:226: 	    _M_capacity(__dnew);
	movq	-16(%rbp), %rdx	# __dnew, __dnew.3_5
	movq	-40(%rbp), %rax	# this, tmp95
	movq	%rdx, %rsi	# __dnew.3_5,
	movq	%rax, %rdi	# tmp95,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT	#
	jmp	.L34	#
.L33:
	movq	-40(%rbp), %rax	# this, tmp96
	movq	%rax, -8(%rbp)	# tmp96, this
# /usr/include/c++/12/bits/basic_string.h:358: 	return _M_local_data();
	movq	-8(%rbp), %rax	# this, tmp97
	movq	%rax, %rdi	# tmp97,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT	#
# /usr/include/c++/12/bits/basic_string.h:358: 	return _M_local_data();
	nop	
.L34:
# /usr/include/c++/12/bits/basic_string.tcc:241: 	} __guard(this);
	movq	-40(%rbp), %rdx	# this, tmp98
	leaq	-24(%rbp), %rax	#, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_	#
# /usr/include/c++/12/bits/basic_string.tcc:243: 	this->_S_copy_chars(_M_data(), __beg, __end);
	movq	-40(%rbp), %rax	# this, tmp100
	movq	%rax, %rdi	# tmp100,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT	#
	movq	%rax, %rcx	#, _6
	movq	-56(%rbp), %rdx	# __end, tmp101
	movq	-48(%rbp), %rax	# __beg, tmp102
	movq	%rax, %rsi	# tmp102,
	movq	%rcx, %rdi	# _6,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT	#
# /usr/include/c++/12/bits/basic_string.tcc:245: 	__guard._M_guarded = 0;
	movq	$0, -24(%rbp)	#, __guard._M_guarded
# /usr/include/c++/12/bits/basic_string.tcc:247: 	_M_set_length(__dnew);
	movq	-16(%rbp), %rdx	# __dnew, __dnew.4_7
	movq	-40(%rbp), %rax	# this, tmp103
	movq	%rdx, %rsi	# __dnew.4_7,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT	#
# /usr/include/c++/12/bits/basic_string.tcc:248:       }
	leaq	-24(%rbp), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev	#
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2064:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB2160:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
# /usr/include/c++/12/bits/stl_iterator_base_funcs.h:151: 			     std::__iterator_category(__first));
	leaq	-8(%rbp), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_	#
# /usr/include/c++/12/bits/stl_iterator_base_funcs.h:150:       return std::__distance(__first, __last,
	movq	-8(%rbp), %rax	# __first, __first.5_1
	movq	-16(%rbp), %rdx	# __last, tmp87
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# __first.5_1,
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag	#
# /usr/include/c++/12/bits/stl_iterator_base_funcs.h:152:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2160:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB2220:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# D.50336, D.50336
# /usr/include/c++/12/bits/stl_iterator_base_types.h:239:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/include/c++/12/bits/stl_iterator_base_types.h:239:     { return typename iterator_traits<_Iter>::iterator_category(); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2220:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB2221:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
# /usr/include/c++/12/bits/stl_iterator_base_funcs.h:105:       return __last - __first;
	movq	-16(%rbp), %rax	# __last, tmp84
	subq	-8(%rbp), %rax	# __first, _3
# /usr/include/c++/12/bits/stl_iterator_base_funcs.h:106:     }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2221:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2296:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# shared_memory.cc:8: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L44	#,
# shared_memory.cc:8: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L44	#,
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rax	#, tmp83
	movq	%rax, %rdx	# tmp83,
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp84
	movq	%rax, %rsi	# tmp84,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp85,
	call	__cxa_atexit@PLT	#
.L44:
# shared_memory.cc:8: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2296:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2297:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# shared_memory.cc:8: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2297:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
