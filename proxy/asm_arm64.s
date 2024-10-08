
#include "textflag.h"
#include "funcdata.h"

#define LOCAL_RETVALID 40
#define LOCAL_REGARGS 48


TEXT ·makeFuncStub0(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    0(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub1(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    8(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub2(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    16(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub3(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    24(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub4(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    32(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub5(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    40(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub6(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    48(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub7(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    56(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub8(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    64(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub9(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    72(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub10(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    80(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub11(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    88(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub12(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    96(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub13(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    104(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub14(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    112(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub15(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    120(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub16(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    128(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub17(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    136(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub18(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    144(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub19(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    152(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub20(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    160(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub21(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    168(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub22(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    176(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub23(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    184(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub24(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    192(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub25(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    200(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub26(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    208(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub27(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    216(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub28(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    224(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub29(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    232(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub30(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    240(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub31(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    248(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub32(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    256(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub33(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    264(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub34(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    272(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub35(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    280(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub36(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    288(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub37(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    296(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub38(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    304(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub39(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    312(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub40(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    320(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub41(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    328(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub42(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    336(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub43(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    344(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub44(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    352(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub45(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    360(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub46(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    368(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub47(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    376(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub48(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    384(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub49(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    392(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub50(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    400(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub51(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    408(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub52(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    416(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub53(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    424(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub54(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    432(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub55(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    440(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub56(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    448(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub57(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    456(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub58(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    464(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub59(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    472(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub60(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    480(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub61(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    488(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub62(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    496(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub63(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    504(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub64(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    512(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub65(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    520(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub66(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    528(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub67(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    536(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub68(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    544(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub69(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    552(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub70(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    560(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub71(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    568(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub72(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    576(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub73(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    584(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub74(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    592(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub75(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    600(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub76(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    608(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub77(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    616(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub78(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    624(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub79(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    632(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub80(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    640(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub81(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    648(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub82(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    656(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub83(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    664(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub84(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    672(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub85(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    680(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub86(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    688(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub87(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    696(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub88(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    704(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub89(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    712(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub90(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    720(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub91(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    728(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub92(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    736(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub93(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    744(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub94(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    752(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub95(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    760(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub96(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    768(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub97(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    776(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub98(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    784(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub99(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    792(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub100(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    800(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub101(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    808(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub102(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    816(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub103(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    824(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub104(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    832(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub105(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    840(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub106(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    848(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub107(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    856(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub108(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    864(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub109(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    872(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub110(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    880(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub111(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    888(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub112(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    896(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub113(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    904(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub114(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    912(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub115(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    920(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub116(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    928(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub117(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    936(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub118(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    944(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub119(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    952(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub120(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    960(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub121(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    968(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub122(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    976(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub123(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    984(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub124(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    992(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub125(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1000(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub126(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1008(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub127(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1016(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub128(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1024(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub129(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1032(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub130(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1040(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub131(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1048(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub132(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1056(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub133(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1064(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub134(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1072(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub135(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1080(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub136(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1088(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub137(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1096(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub138(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1104(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub139(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1112(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub140(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1120(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub141(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1128(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub142(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1136(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub143(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1144(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub144(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1152(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub145(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1160(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub146(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1168(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub147(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1176(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub148(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1184(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub149(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1192(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub150(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1200(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub151(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1208(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub152(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1216(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub153(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1224(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub154(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1232(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub155(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1240(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub156(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1248(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub157(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1256(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub158(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1264(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub159(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1272(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub160(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1280(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub161(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1288(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub162(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1296(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub163(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1304(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub164(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1312(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub165(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1320(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub166(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1328(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub167(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1336(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub168(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1344(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub169(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1352(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub170(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1360(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub171(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1368(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub172(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1376(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub173(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1384(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub174(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1392(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub175(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1400(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub176(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1408(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub177(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1416(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub178(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1424(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub179(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1432(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub180(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1440(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub181(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1448(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub182(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1456(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub183(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1464(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub184(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1472(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub185(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1480(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub186(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1488(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub187(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1496(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub188(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1504(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub189(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1512(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub190(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1520(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub191(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1528(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub192(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1536(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub193(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1544(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub194(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1552(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub195(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1560(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub196(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1568(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub197(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1576(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub198(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1584(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub199(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1592(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub200(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1600(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub201(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1608(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub202(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1616(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub203(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1624(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub204(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1632(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub205(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1640(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub206(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1648(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub207(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1656(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub208(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1664(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub209(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1672(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub210(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1680(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub211(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1688(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub212(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1696(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub213(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1704(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub214(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1712(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub215(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1720(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub216(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1728(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub217(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1736(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub218(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1744(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub219(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1752(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub220(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1760(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub221(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1768(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub222(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1776(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub223(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1784(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub224(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1792(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub225(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1800(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub226(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1808(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub227(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1816(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub228(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1824(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub229(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1832(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub230(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1840(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub231(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1848(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub232(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1856(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub233(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1864(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub234(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1872(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub235(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1880(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub236(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1888(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub237(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1896(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub238(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1904(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub239(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1912(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub240(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1920(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub241(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1928(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub242(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1936(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub243(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1944(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub244(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1952(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub245(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1960(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub246(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1968(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub247(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1976(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub248(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1984(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

TEXT ·makeFuncStub249(SB),(NOSPLIT|WRAPPER),$0
    NO_LOCAL_POINTERS
    MOVD    0(R0), R26
    MOVD    0(R26), R26
    MOVD    1992(R26), R26
    MOVD    0(R26), R0
    CALL    R0
    RET

