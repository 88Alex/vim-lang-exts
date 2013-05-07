" Assembly syntax file for Vim
" Written by Alexander Kitaev

if exists("b:current_syntax")
	finish
endif

syn match	asmHexNum	"\v0x[0-9A-Fa-f]\+"
syn match	asmBinNum	"\v0b[01]\+"
syn match	asmDecNum	"\v[0-9]\+"
syn match	asmMemLoc	"\v\[.\+\]" contains=asmHexNum
syn match	asmComment	"\v;.*$"

syn keyword	asmInstruc	aaa aad aam aas adc add and call cbw clc cld cli cmc cmp
syn keyword	asmInstruc	cmpsb cmpsw cwd daa das dec div esc hlt idiv imul in inc
syn keyword	asmInstruc	int into iret ja jae jb jbe jc jcxz je jg jge jl jle jna
syn keyword	asmInstruc	jnae jnb jnbe jnc jne jng jnge jnl jnle jno jnp jns jnz
syn keyword	asmInstruc	jo jp jpe jpo js jz jmp lahf lds lea les lock lodsb
syn keyword	asmInstruc	lodsw loop loope loopne loopnz loopz mov movsb movsw
syn keyword	asmInstruc	mul neg nop not or out pop popf push pushf rcl rcr rep
syn keyword	asmInstruc	repe repne repnz repz ret retn retf rol ror sahf sal sar
syn keyword	asmInstruc	sbb scasb scasw shl shr stc std sti stosb stosw sub test
syn keyword	asmInstruc	wait xchg xlat xor

syn keyword	asm80186Inst	bound enter ins leave outs popa pusha

syn keyword	asm80286Inst	arpl clts lar lgdt lidt lldt lmsw lsl ltr sgdt sidt sldt
syn keyword	asm80286Inst	smsw str verr verw

syn keyword	asm80386Inst	bsf bsr bt btc bts btr cdq cmpsd cwde insd iretd iretf
syn keyword	asm80386Inst	jcxz jecxz lfs lgs lss lodsd loopew loopnew loopnzw
syn keyword	asm80386Inst	loopw loopzw loopd looped loopned loopnzd loopzd movsd
syn keyword	asm80386Inst	movsx movzx outsd popad popfd pushad pushfd scasd seta
syn keyword	asm80386Inst	setae setb setbe setc sete setg setge setl setle setna
syn keyword	asm80386Inst	setnae setnb setnbe setnc setne setng setnge setnl setnle 
syn keyword	asm80386Inst	setno setnp setns setnz seto setp setpe setpo sets setz
syn keyword	asm80386Inst	shld shrd stosd

syn keyword	asm80486Inst	bswap cmpxchg invd invlpg wbinvd xadd

syn keyword	asmPentiumInst	cpuid cmpxchg8b rdmsr rdtsc wrmsr rsm

syn keyword	asmVarType	db dd dw

syn keyword	asmRegisters	ah al ax eax rax bh bl bx ebx rbx ch cl cx ecx rcx
syn keyword	asmRegisters	dh dl dx edx rdx sp bp si di cs ds ss es fs gs flags

hi def link	asmHexNum	Number
hi def link	asmBinNum	Number
hi def link	asmDecNum	Number
hi def link	asmMemLoc	Constant
hi def link	asmComment	Comment
hi def link	asmInstruc	Statement
hi def link	asm80186Inst	Statement
hi def link	asm80286Inst	Statement
hi def link	asm80386Inst	Statement
hi def link	asm80486Inst	Statement
hi def link	asmPentiumInst	Statement
hi def link	asmVarType	Type
hi def link	asmRegisters	Identifier

let b:current_syntax = "asm"