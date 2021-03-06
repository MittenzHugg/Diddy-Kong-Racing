/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x80042D20 */

#include "types.h"
#include "macros.h"

extern s32 D_800DCB50;
extern s16 D_800DCB54;
extern f32 D_800DCB9C;
extern s32 D_800DCDD0;
extern f64 D_800E6768;
extern f64 D_800E6770;
extern f64 D_800E6778;
extern f64 D_800E6780;
extern f32 D_800E6A00;
extern s32 D_8011D528;
extern s32 D_8011D55C;
extern s8 D_8011D582;
extern s8 D_8011D583;
extern s8 D_8011D584;
extern s32 D_8011D598;
extern s8 D_8011D59C;
extern s8 D_8011D59D;
extern s16 D_8011D59E;
extern u32 D_8011D590[];
extern s16 D_8011D5A0[];
extern s16 D_8011D5A8[];
extern s16 D_8011D5AC;

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80042D20.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80043ECC.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80044170.s")

s32 func_80044450(s32 arg0) {
    return func_8006F94C(0, 99) < arg0;
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004447C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80045128.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800452A0.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80045C48.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80046524.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80048C7C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80048E64.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800494E0.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80049794.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004C0A0.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004C140.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004C2B0.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004CC20.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004D590.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004D95C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004DAB0.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004DE38.s")

typedef struct unk8004F77C {
    u8 unk0[0x20A];
    u8 unk20A;
} unk8004F77C;

void func_8004F77C(unk8004F77C *arg0) {
    s32 temp;

    arg0->unk20A &= ~0x80;
    if ((D_8011D528 & 0x4000) != 0) {
        arg0->unk20A |= 0x80;
    }
    
    temp = arg0->unk20A & 0xF;
    if ((arg0->unk20A & 0xC0) != 0) {
        temp++;
        if (temp >= 3) {
            temp = 2;
        }
    } else {
        temp--;
        if (temp < 0) {
            temp = 0;
        }
    }
    
    arg0->unk20A = (arg0->unk20A & 0xFFF0) | temp;
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8004F7F4.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80050754.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80050850.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80050A28.s")

s32 func_80052188(void) {
    if (D_8011D582 == 2) {
        D_8011D582 = 1;
        return 1;
    }
    return 0;
}

void func_800521B8(s32 arg0) {
    D_8011D582 = arg0;
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800521C4.s")

/* Unknown Size */
typedef struct unk8005234C {
    u8 unk0[0x16C];
    s16 unk16C;
} unk8005234C;

void func_8005234C(unk8005234C *arg0) {
    arg0->unk16C -= arg0->unk16C >> 3;
    if (arg0->unk16C >= -9 && arg0->unk16C < 10) { // Deadzone?
        arg0->unk16C = 0;
    }
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80052388.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8005250C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80052988.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80052B64.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80052D7C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80053478.s")

/* Unknown Size */
typedef struct unk8011D510 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    u16 unk6;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
} unk8011D510;

extern unk8011D510 D_8011D510;

/* Unknown Size */
typedef struct unk800535C4 {
    s16 unk0;
    s16 unk2;
} unk800535C4;

/* Unknown Size */
typedef struct unk800535C4_2 {
    u8 unk0[0x9C];
    s32 unk9C;
    s32 unkA0;
    s32 unkA4;
    u8 unkA8[0xF8];
    s16 unk1A0;
    s16 unk1A2;
    s16 unk1A4;
} unk800535C4_2;

/* Size: 0x40 Bytes */
typedef struct unk800535C4_3 {
    u8 unk0[0x40];
} unk800535C4_3;

void func_8006F64C(unk800535C4_3*, f32, f32, f32, s32*, s32*, s32*);

void func_800535C4(unk800535C4 *arg0, unk800535C4_2 *arg1) {
    unk800535C4_3 sp30;

    D_8011D510.unk0 = -arg1->unk1A0;
    D_8011D510.unk2 = -arg0->unk2;
    D_8011D510.unk4 = -arg1->unk1A4;
    D_8011D510.unkC = 0;
    D_8011D510.unk10 = 0;
    D_8011D510.unk14 = 0;
    D_8011D510.unk8 = 1;
    func_8006FE74(&sp30, &D_8011D510);
    
    func_8006F64C(&sp30, 0, -1, 0, &arg1->unkA0, &arg1->unkA4, &arg1->unk9C);
}

typedef struct unk80053664 {
    u8 unk0[0xB4];
    f32 unkB4;
    f32 unkB8;
} unk80053664;

void func_80053664(unk80053664 *arg0) {
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f0_3;

    temp_f0 = (f64) arg0->unkB4;
    
    if (0.0 < temp_f0) {
        arg0->unkB4 = (f32) (temp_f0 - D_800E6768);
    }
    
    if ((D_8011D528 & 0x8000) != 0) {
        arg0->unkB4 = 1.0f;
    }
    
    if ((D_8011D528 & 0x4000) != 0) {
        temp_f0_2 = (f64) arg0->unkB8;
        if (temp_f0_2 < 1.0) {
            arg0->unkB8 = (f32) (temp_f0_2 + D_800E6770);
        }
    } else {
        temp_f0_3 = (f64) arg0->unkB8;
        if (D_800E6778 < temp_f0_3) {
            arg0->unkB8 = (f32) (temp_f0_3 - D_800E6780);
        }
    }
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80053750.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80053E9C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80054110.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8005492C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80054FD0.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80055A84.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80055EC0.s")

/* Unknown Size */
typedef struct unk800570A4 {
    u8 unk0[0x108];
    s32 unk108; 
    u8 unk10C[0x102];
    s16 unk20E;
    s8 unk210;
} unk800570A4;

/* Unknown Size */
typedef struct unk800570A4_2 {
    u8 unk0[0xC];
    s32 unkC;
    s32 unk10;
    s32 unk14;
    u8 unk18[0x4C];
    unk800570A4* unk64;
} unk800570A4_2;

/* Unknown Size */
typedef struct unk80056930 {
    u8 unk0[0x3];
    s8 unk3;
} unk80056930;

void func_80057048(unk800570A4_2 *arg0, s32 arg1);

void func_80056930(unk800570A4_2 *arg0, unk80056930 *arg1) {
    if ((func_8009C30C() & 0x100) != 0) {
        func_800570B8(arg0, 0x162, 8, 0x82);
    } else {
        func_80057048(arg0, arg1->unk3 + 0x156);
    }
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8005698C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80056E2C.s")


void func_80057048(unk800570A4_2 *arg0, s32 arg1) {
    unk800570A4 *temp = arg0->unk64;
    u16 temp2 = arg1;
    if (D_8011D55C != -1 && temp->unk108 == 0) {
        func_80001EA8(temp2, arg0->unkC, arg0->unk10, arg0->unk14, 0);
    }
}

unk800570A4 *func_800570A4(unk800570A4_2 *arg0, s32 arg1, s32 arg2) {
    unk800570A4 *temp = arg0->unk64;
    temp->unk20E = arg1;
    temp->unk210 = arg2;
    return temp;
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800570B8.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80057220.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800575EC.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800576E0.s")

extern s32 D_8011D534;

/* Unknown Size */
typedef struct unk800579B0 {
    u8 unk0[0x1E1];
    s8 unk1E1;
} unk800579B0;

void func_800579B0(unk800579B0 *arg0, s32 arg1, f32 arg2) {
    s32 temp, temp2;

    temp = D_8011D534 - arg0->unk1E1;
    temp2 = (s32)((f64)((f32)temp * arg2) * 0.125);
    
    if (temp != 0 && temp2 == 0) {
        if (temp > 0) {
            temp2 = 1;
        }
        if (temp < 0) {
            temp2 = -1;
        }
    }
    
    arg0->unk1E1 = arg0->unk1E1 + temp2;
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80057A40.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800580B4.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_800581E8.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80058B84.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80058D5C.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80058F44.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80059080.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80059208.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80059790.s")

void func_800598D0(void) {
    D_8011D590[0] = func_80070C9C(0x21C0, 0xFF0000FF);
    D_8011D590[1] = D_8011D590[0] + 0x10E0;
    D_8011D590[2] = 0;
    D_8011D5A0[0] = 0;
    D_8011D5A0[1] = 0;
    D_8011D5A0[2] = 0;
    D_8011D5A8[0] = 0;
    D_8011D5A8[1] = 0;
    D_8011D59D = 0;
    D_8011D5AC = -1;
}

void func_80059944(void) {
    D_8011D59C = D_8011D59D;
    D_8011D5A0[D_8011D59C] = 0;
    D_8011D5A8[D_8011D59C] = 0;
    D_8011D59E = 0;
}

void func_80059984(s32 arg0) {
    D_8011D59D = (s8) ((D_8011D59C + 1) & 1);
    D_8011D5AC = arg0;
}

s16 func_800599A8(void) {
    return D_8011D5AC;
}

s32 func_800599B8(s32 arg0, s32 arg1, s16 arg2, s32 arg3, s32 arg4) {
    s32 temp_v0;
    s32 temp_t8;
    s16 sp2E;

    temp_t8 = (D_8011D59C + 1) & 1;
    temp_v0 = func_80074B34(arg0, (s16)arg1, arg2, arg3, arg4, &sp2E, D_8011D590[temp_t8]);
    if (arg3 != 0) {
        if (temp_v0 == 0) {
            D_8011D5A0[temp_t8] = sp2E;
            D_8011D5AC = arg1;
        } else {
            D_8011D5AC = -1;
        }
    }
    
    return temp_v0;
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80059A68.s")

void func_80059B4C(void) {
    if (D_8011D598 != 0) {
        func_80071140(D_8011D598);
    }
    D_8011D598 = 0;
}

void func_80059B7C(s32 arg0, s32 arg1, s16 arg2, s16 arg3, s16 arg4) {
    func_80075000(arg0, (s16)arg1, arg2, arg3, arg4, D_8011D5A0[D_8011D59C], D_8011D590[D_8011D59C]);
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80059BF0.s")

s16 func_80059E20(void) {
    return D_8011D5A8[D_8011D59C];
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_80059E40.s")

void func_8005A3B0(void) {
    D_8011D584 = 1;
}

void func_8005A3C0(void) {
    D_8011D583 = 1;
}

void func_8003B4BC(s32 arg0);

void func_8005A3D0(void) {
    s32 i;
    s32 count = 0;
    u8* temp = (u8*)&func_8003B4BC;
    
    for(i = 0; i < D_800DCB50; i++) {
        count += temp[i];
    }
    
    if (count != D_800DCDD0) {
        D_800DCB54 = 0x800;
    }
}

GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8005A424.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8005A6F0.s")
GLOBAL_ASM("asm/non_matchings/unknown_043920/func_8005B818.s")

void func_8005C25C(void) {
    D_800DCB9C = D_800E6A00;
}

/* Unknown Size */
typedef struct unk8005C270 {
    u8 unk0[0x190];
    s16 unk190;
    s8 unk192;
    s8 unk193;
} unk8005C270;

void func_8005C270(unk8005C270 *arg0) {
    s32 temp = func_8001BA64();
    
    arg0->unk192--;
    if (arg0->unk192 < 0) {
        arg0->unk192 += temp;
        if(arg0->unk193 > 0){
            arg0->unk193--;
        }
    }
    
    if (arg0->unk190 >= -31999) {
        arg0->unk190--;
    }
}


