/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x80065EA0 */

#include "types.h"
#include "macros.h"

extern u32 D_80000300;
extern s32 D_80120CE0;
extern s32 D_80120CE4;
extern f32 D_80120D10;
extern u8  D_80120D15;
extern s32 D_80120D18;
extern s32 D_801210A0;

GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80065EA0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066060.s")

void func_80066098(s8 arg0) {
    s8 temp = (arg0 << 24) >> 24;
    if (!D_80000300) {
        D_80120D15 = temp;
    }
}
void func_800660C0(void) {
    D_80120D18 = 1;
}
void func_800660D0(void) {
    D_80120D18 = 0;
}
/* Unused? */
f32 func_800660DC(void) {
    return D_80120D10;
}

GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800660EC.s")

/* Unused? */
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066194.s")

/* Unused? */
s32* func_80066204(void) {
    return &D_801210A0;
}

s32 func_80066210(void) {
    return D_80120CE0;
}

s32 func_80066220(void) {
    return D_80120CE4;
}

GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066230.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066348.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800663DC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066488.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066510.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066520.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006652C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800665E8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066610.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066818.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066894.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066910.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066940.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066AA8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066BA8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066C2C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80066CDC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80067A3C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80067D3C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80067F20.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80067F2C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006807C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80068158.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800682AC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80068408.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80068508.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80068514.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80068BF4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80068FA8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069484.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069790.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069A40.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069CFC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069D20.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069D7C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069DA4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069DB0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069DBC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069DC8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069E14.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80069F28.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A100.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A10C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A1C4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A434.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A458.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A4F8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A50C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A528.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A554.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A578.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A59C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A5E0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A624.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A6A0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006A6B0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B0AC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B0F8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B14C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B190.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B1D4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B224.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B240.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006B250.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006BD10.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006BD88.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006BD98.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006BDB0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006BDDC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006BEFC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006BFC8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C164.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C18C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C19C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C1AC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C22C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C2E4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C2F0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C300.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/D_8006C330.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C3E0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006C60C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006CAE4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006CB58.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006CC14.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006CCF0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006D8A4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006D8E0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006D8F0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006D968.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DA0C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DA28.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DB14.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DB20.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DB2C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DB3C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DBE4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DC58.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006DCF8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006E2E8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006E3BC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006E5BC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006E770.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006E994.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EA90.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EAA0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EAB0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EAC0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EB14.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EB5C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EB78.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EBA8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EBC4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EBE0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EBFC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EC18.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EC48.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006ECAC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006ECE0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006ECFC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EFB8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006EFDC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F140.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F254.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F29C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F338.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F388.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F398.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F42C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F43C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F4C8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F4EC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F510.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F53C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F564.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F5E0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F64C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F6EC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F768.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F870.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F90C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F918.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F92C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F94C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006F9B8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006FB60.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006FC30.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006FE04.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006FE30.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8006FE74.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070130.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800701E4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070320.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800703D8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070490.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800704F0.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800705F8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070638.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8007066C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800706BC.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800706C8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070750.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800707C4.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_800707F8.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_8007082C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070890.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070A2C.s")
GLOBAL_ASM("asm/non_matchings/unknown_066AA0/func_80070B04.s")