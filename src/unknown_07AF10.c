/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x8007A310 */

#include "types.h"
#include "macros.h"

/* Size: 0x08 bytes */
typedef struct unk800DE77C {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
} unk800DE77C;

extern unk800DE77C D_800DE77C[8];
extern s32 D_801262B0[2];
extern s32 D_801262B8[2];
extern s32 D_801262C8;
extern s32 D_801262CC;
extern s8  D_80126308;
extern s8  D_80126309;

GLOBAL_ASM("asm/non_matchings/unknown_07AF10/func_8007A310.s")

void func_8007A4C0(s32 arg0) {
    D_801262CC = arg0;
}

/* Unused? */
s32 func_8007A4CC(void) {
    return D_801262CC;
}

/* Unused? */
void func_8007A4DC(s32 arg0) {
    D_801262B0[arg0] = D_800DE77C[D_801262CC & 0x07].unk0;
    D_801262B8[arg0] = D_800DE77C[D_801262CC & 0x07].unk4;
}

s32 func_8007A520(void) {
    return (D_801262B8[D_801262C8] << 16) | D_801262B0[D_801262C8];
}

GLOBAL_ASM("asm/non_matchings/unknown_07AF10/func_8007A550.s")
GLOBAL_ASM("asm/non_matchings/unknown_07AF10/func_8007A7E8.s")

void func_8007A974(void) {
    D_80126308 = 0;
    D_80126309 = 2;
}

GLOBAL_ASM("asm/non_matchings/unknown_07AF10/func_8007A98C.s")
GLOBAL_ASM("asm/non_matchings/unknown_07AF10/func_8007AB24.s")
GLOBAL_ASM("asm/non_matchings/unknown_07AF10/func_8007AB9C.s")
GLOBAL_ASM("asm/non_matchings/unknown_07AF10/func_8007ABFC.s")
