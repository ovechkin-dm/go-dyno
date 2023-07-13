
#include "textflag.h"
#include "funcdata.h"
#include "go_asm.h"

#define LOCAL_RETVALID 32
#define LOCAL_REGARGS 40



TEXT ·makeFuncStub0(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $0, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVQ    $0, 32(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub1(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $1, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $1, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub2(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $2, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $2, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub3(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $3, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $3, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub4(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $4, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $4, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub5(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $5, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $5, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub6(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $6, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $6, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub7(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $7, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $7, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub8(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $8, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $8, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub9(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $9, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $9, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub10(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $10, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $10, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub11(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $11, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $11, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub12(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $12, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $12, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub13(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $13, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $13, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub14(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $14, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $14, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub15(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $15, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $15, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub16(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $16, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $16, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub17(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $17, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $17, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub18(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $18, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $18, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub19(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $19, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $19, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub20(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $20, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $20, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub21(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $21, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $21, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub22(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $22, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $22, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub23(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $23, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $23, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub24(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $24, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $24, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub25(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $25, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $25, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub26(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $26, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $26, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub27(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $27, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $27, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub28(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $28, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $28, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub29(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $29, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $29, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub30(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $30, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $30, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub31(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $31, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $31, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub32(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $32, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $32, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub33(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $33, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $33, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub34(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $34, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $34, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub35(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $35, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $35, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub36(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $36, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $36, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub37(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $37, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $37, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub38(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $38, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $38, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub39(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $39, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $39, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub40(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $40, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $40, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub41(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $41, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $41, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub42(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $42, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $42, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub43(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $43, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $43, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub44(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $44, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $44, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub45(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $45, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $45, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub46(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $46, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $46, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub47(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $47, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $47, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub48(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $48, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $48, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub49(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $49, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $49, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub50(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $50, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $50, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub51(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $51, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $51, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub52(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $52, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $52, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub53(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $53, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $53, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub54(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $54, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $54, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub55(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $55, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $55, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub56(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $56, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $56, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub57(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $57, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $57, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub58(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $58, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $58, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub59(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $59, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $59, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub60(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $60, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $60, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub61(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $61, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $61, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub62(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $62, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $62, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub63(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $63, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $63, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub64(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $64, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $64, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub65(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $65, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $65, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub66(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $66, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $66, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub67(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $67, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $67, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub68(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $68, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $68, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub69(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $69, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $69, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub70(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $70, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $70, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub71(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $71, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $71, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub72(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $72, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $72, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub73(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $73, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $73, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub74(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $74, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $74, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub75(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $75, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $75, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub76(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $76, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $76, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub77(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $77, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $77, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub78(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $78, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $78, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub79(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $79, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $79, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub80(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $80, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $80, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub81(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $81, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $81, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub82(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $82, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $82, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub83(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $83, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $83, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub84(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $84, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $84, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub85(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $85, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $85, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub86(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $86, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $86, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub87(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $87, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $87, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub88(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $88, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $88, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub89(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $89, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $89, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub90(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $90, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $90, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub91(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $91, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $91, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub92(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $92, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $92, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub93(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $93, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $93, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub94(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $94, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $94, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub95(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $95, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $95, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub96(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $96, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $96, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub97(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $97, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $97, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub98(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $98, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $98, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub99(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $99, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $99, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub100(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $100, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $100, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub101(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $101, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $101, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub102(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $102, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $102, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub103(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $103, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $103, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub104(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $104, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $104, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub105(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $105, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $105, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub106(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $106, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $106, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub107(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $107, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $107, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub108(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $108, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $108, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub109(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $109, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $109, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub110(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $110, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $110, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub111(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $111, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $111, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub112(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $112, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $112, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub113(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $113, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $113, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub114(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $114, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $114, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub115(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $115, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $115, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub116(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $116, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $116, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub117(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $117, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $117, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub118(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $118, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $118, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub119(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $119, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $119, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub120(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $120, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $120, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub121(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $121, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $121, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub122(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $122, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $122, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub123(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $123, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $123, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub124(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $124, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $124, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub125(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $125, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $125, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub126(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $126, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $126, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub127(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $127, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $127, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub128(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $128, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $128, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub129(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $129, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $129, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub130(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $130, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $130, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub131(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $131, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $131, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub132(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $132, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $132, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub133(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $133, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $133, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub134(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $134, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $134, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub135(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $135, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $135, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub136(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $136, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $136, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub137(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $137, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $137, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub138(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $138, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $138, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub139(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $139, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $139, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub140(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $140, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $140, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub141(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $141, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $141, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub142(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $142, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $142, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub143(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $143, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $143, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub144(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $144, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $144, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub145(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $145, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $145, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub146(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $146, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $146, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub147(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $147, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $147, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub148(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $148, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $148, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub149(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $149, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $149, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub150(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $150, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $150, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub151(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $151, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $151, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub152(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $152, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $152, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub153(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $153, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $153, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub154(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $154, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $154, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub155(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $155, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $155, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub156(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $156, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $156, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub157(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $157, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $157, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub158(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $158, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $158, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub159(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $159, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $159, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub160(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $160, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $160, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub161(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $161, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $161, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub162(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $162, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $162, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub163(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $163, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $163, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub164(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $164, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $164, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub165(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $165, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $165, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub166(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $166, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $166, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub167(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $167, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $167, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub168(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $168, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $168, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub169(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $169, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $169, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub170(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $170, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $170, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub171(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $171, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $171, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub172(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $172, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $172, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub173(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $173, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $173, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub174(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $174, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $174, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub175(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $175, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $175, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub176(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $176, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $176, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub177(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $177, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $177, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub178(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $178, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $178, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub179(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $179, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $179, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub180(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $180, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $180, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub181(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $181, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $181, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub182(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $182, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $182, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub183(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $183, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $183, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub184(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $184, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $184, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub185(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $185, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $185, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub186(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $186, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $186, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub187(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $187, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $187, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub188(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $188, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $188, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub189(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $189, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $189, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub190(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $190, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $190, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub191(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $191, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $191, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub192(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $192, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $192, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub193(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $193, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $193, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub194(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $194, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $194, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub195(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $195, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $195, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub196(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $196, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $196, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub197(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $197, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $197, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub198(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $198, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $198, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET



TEXT ·makeFuncStub199(SB),(NOSPLIT|WRAPPER),$312
    NO_LOCAL_POINTERS
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·spillArgs(SB)
    MOVQ    AX, 24(SP)
    MOVQ    AX, 0(SP)
    MOVQ    R12, 8(SP)
    MOVQ    $199, 16(SP)
    CALL    ·moveMakeFuncArgPtrsCustom(SB)
    MOVQ    24(SP), AX
    MOVQ    AX, 0(SP)
    LEAQ    argframe+0(FP), AX
    MOVQ    AX, 8(SP)
    MOVB    $0, LOCAL_RETVALID(SP)
    LEAQ    LOCAL_RETVALID(SP), AX
    MOVQ    AX, 16(SP)
    LEAQ    LOCAL_REGARGS(SP), AX
    MOVQ    AX, 24(SP)
    MOVQ    $199, 32(SP)
    CALL    ·callReflectCustom(SB)
    LEAQ    LOCAL_REGARGS(SP), R12
    CALL    runtime·unspillArgs(SB)
    RET


