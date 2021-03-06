/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x8007F640 */

#include "types.h"
#include "macros.h"
#include "fast3d.h"

extern s32 D_800E7C90;

u32 func_8007F640(s32 arg0) {
    u32 someAddr;
    s32 count, start, size;
    s32 *lut;
    
    lut = (s32 *)func_80076C58(0xB); // Returns a lookup table?
    
    count = 0;
    
    while(lut[count] != -1) {
        count++;
    }
    
    count--;
    
    if (count == 0) {
        func_80071140(lut);
        return 0x80100000;
    } else {
        if (arg0 < 0 || arg0 >= count) {
            func_800C9D54(&D_800E7C90);
            arg0 = 0;
        }
        
        start = lut[arg0];
        size = lut[arg0 + 1] - start;
        someAddr = func_80070C9C(size, 0xFFFF);
        
        func_80076E68(10, someAddr, start, size);
        func_80071140(lut);
        
        return someAddr;
    }
}

extern Gfx D_800DF440;

void func_8007F714(Gfx **dlist, s32 arg1) {
    s32 y_pos;
    
    // In F3DDKR, command 0x07 is the display list call.
    fast3d_cmd((*dlist)++, 0x07020010, (u32)&D_800DF440 + 0x80000000)
    
    arg1 += 0x10;
    y_pos = 0;
    
    while(y_pos != 240) {
        
        // These 7 commands are a gDPLoadTextureBlock()
        fast3d_cmd((*dlist)++, 0xFD100000, arg1 + 0x80000000)
        fast3d_cmd((*dlist)++, 0xF5100000, 0x07080200)
        fast3d_cmd((*dlist)++, 0xE6000000, 0x00000000)
        fast3d_cmd((*dlist)++, 0xF3000000, 0x0777F000)
        fast3d_cmd((*dlist)++, 0xE7000000, 0x00000000)
        fast3d_cmd((*dlist)++, 0xF510A000, 0x00080200)
        fast3d_cmd((*dlist)++, 0xF2000000, 0x004FC014)
        
        // These 3 are a gSPTextureRectangle()
        fast3d_cmd((*dlist)++, 0xE4500000 | (((y_pos + 6) << 2) & 0xFFF), (y_pos << 2) & 0xFFF)
        fast3d_cmd((*dlist)++, 0xB3000000, 0x00000000)
        fast3d_cmd((*dlist)++, 0xB2000000, 0x10000400)
        
        arg1 += 0xF00;
        y_pos += 6;
    }
}

