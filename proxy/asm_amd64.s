
#include "textflag.h"
#include "funcdata.h"
#include "go_asm.h"

#define LOCAL_RETVALID 32
#define LOCAL_REGARGS 40


TEXT ·makeFuncStub0(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    0(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub1(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    8(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub2(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    16(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub3(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    24(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub4(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    32(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub5(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    40(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub6(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    48(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub7(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    56(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub8(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    64(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub9(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    72(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub10(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    80(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub11(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    88(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub12(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    96(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub13(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    104(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub14(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    112(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub15(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    120(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub16(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    128(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub17(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    136(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub18(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    144(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub19(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    152(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub20(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    160(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub21(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    168(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub22(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    176(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub23(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    184(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub24(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    192(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub25(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    200(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub26(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    208(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub27(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    216(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub28(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    224(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub29(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    232(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub30(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    240(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub31(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    248(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub32(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    256(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub33(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    264(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub34(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    272(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub35(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    280(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub36(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    288(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub37(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    296(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub38(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    304(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub39(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    312(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub40(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    320(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub41(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    328(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub42(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    336(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub43(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    344(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub44(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    352(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub45(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    360(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub46(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    368(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub47(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    376(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub48(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    384(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub49(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    392(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub50(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    400(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub51(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    408(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub52(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    416(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub53(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    424(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub54(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    432(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub55(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    440(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub56(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    448(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub57(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    456(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub58(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    464(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub59(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    472(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub60(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    480(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub61(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    488(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub62(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    496(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub63(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    504(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub64(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    512(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub65(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    520(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub66(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    528(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub67(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    536(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub68(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    544(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub69(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    552(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub70(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    560(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub71(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    568(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub72(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    576(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub73(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    584(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub74(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    592(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub75(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    600(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub76(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    608(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub77(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    616(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub78(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    624(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub79(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    632(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub80(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    640(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub81(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    648(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub82(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    656(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub83(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    664(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub84(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    672(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub85(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    680(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub86(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    688(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub87(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    696(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub88(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    704(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub89(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    712(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub90(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    720(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub91(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    728(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub92(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    736(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub93(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    744(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub94(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    752(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub95(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    760(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub96(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    768(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub97(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    776(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub98(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    784(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub99(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    792(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub100(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    800(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub101(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    808(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub102(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    816(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub103(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    824(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub104(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    832(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub105(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    840(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub106(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    848(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub107(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    856(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub108(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    864(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub109(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    872(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub110(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    880(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub111(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    888(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub112(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    896(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub113(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    904(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub114(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    912(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub115(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    920(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub116(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    928(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub117(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    936(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub118(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    944(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub119(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    952(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub120(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    960(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub121(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    968(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub122(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    976(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub123(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    984(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub124(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    992(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub125(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1000(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub126(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1008(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub127(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1016(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub128(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1024(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub129(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1032(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub130(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1040(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub131(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1048(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub132(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1056(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub133(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1064(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub134(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1072(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub135(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1080(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub136(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1088(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub137(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1096(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub138(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1104(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub139(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1112(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub140(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1120(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub141(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1128(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub142(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1136(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub143(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1144(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub144(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1152(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub145(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1160(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub146(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1168(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub147(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1176(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub148(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1184(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub149(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1192(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub150(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1200(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub151(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1208(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub152(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1216(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub153(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1224(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub154(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1232(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub155(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1240(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub156(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1248(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub157(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1256(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub158(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1264(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub159(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1272(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub160(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1280(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub161(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1288(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub162(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1296(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub163(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1304(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub164(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1312(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub165(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1320(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub166(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1328(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub167(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1336(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub168(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1344(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub169(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1352(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub170(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1360(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub171(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1368(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub172(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1376(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub173(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1384(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub174(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1392(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub175(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1400(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub176(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1408(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub177(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1416(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub178(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1424(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub179(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1432(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub180(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1440(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub181(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1448(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub182(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1456(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub183(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1464(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub184(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1472(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub185(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1480(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub186(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1488(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub187(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1496(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub188(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1504(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub189(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1512(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub190(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1520(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub191(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1528(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub192(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1536(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub193(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1544(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub194(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1552(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub195(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1560(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub196(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1568(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub197(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1576(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub198(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1584(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub199(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1592(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub200(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1600(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub201(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1608(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub202(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1616(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub203(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1624(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub204(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1632(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub205(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1640(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub206(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1648(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub207(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1656(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub208(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1664(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub209(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1672(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub210(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1680(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub211(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1688(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub212(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1696(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub213(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1704(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub214(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1712(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub215(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1720(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub216(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1728(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub217(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1736(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub218(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1744(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub219(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1752(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub220(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1760(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub221(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1768(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub222(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1776(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub223(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1784(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub224(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1792(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub225(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1800(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub226(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1808(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub227(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1816(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub228(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1824(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub229(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1832(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub230(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1840(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub231(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1848(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub232(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1856(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub233(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1864(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub234(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1872(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub235(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1880(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub236(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1888(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub237(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1896(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub238(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1904(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub239(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1912(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub240(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1920(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub241(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1928(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub242(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1936(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub243(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1944(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub244(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1952(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub245(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1960(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub246(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1968(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub247(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1976(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub248(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1984(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET

TEXT ·makeFuncStub249(SB),(NOSPLIT|NOFRAME|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVQ    0(AX), DX
    MOVQ    0(DX), DX
    MOVQ    1992(DX), DX
    MOVQ    0(DX), AX
    CALL    AX
    RET
