
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.12.2
// timestamp : Tue May 21 21:42:06 2024 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /home/shakti-iitm/RCT/new-ctg/riscv-ctg/sample_cgfs/dataset.cgf \
//                  --cgf /home/shakti-iitm/RCT/new-ctg/riscv-ctg/sample_cgfs/sample_cgfs_fext/Zcmp/RV32/cm_popretz.cgf \
 \
//                  -- xlen 32  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the cm.popretz instruction of the RISC-V RV32_Zca_Zcmp extension for the cm.popretz covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I_Zca_Zcmp")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*I.*Zca.*Zcmp.*);def TEST_CASE_1=True;",cm.popretz)

RVTEST_SIGBASE(x2,signature_x2_1)

inst_0:
// rs1==x18, rd==x1, imm_val > 0, rs1_val == 16
// opcode: cm.popretz; op1:x18; op2:x1; op1val:0x10 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x18, 0x10, 0*4, cm.popretz,0x4)

inst_1:
// rs1==x8, rs1_val == 112, 
// opcode: cm.popretz; op1:x8; op2:x1; op1val:0x10 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x8, 0x10, 1*4, cm.popretz,0x4)

inst_2:
// rs1==x21, rs1_val == 32, 
// opcode: cm.popretz; op1:x21; op2:x1; op1val:0x20 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x21, 0x20, 2*4, cm.popretz,0x4)

inst_3:
// rs1==x9, rs1_val == 48, 
// opcode: cm.popretz; op1:x9; op2:x1; op1val:0x30 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x9, 0x30, 3*4, cm.popretz,0x4)

inst_4:
// rs1==x19, rs1_val == 64, 
// opcode: cm.popretz; op1:x19; op2:x1; op1val:0x40 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x19, 0x40, 4*4, cm.popretz,0x4)

inst_5:
// rs1==x20, rs1_val == 80, 
// opcode: cm.popretz; op1:x20; op2:x1; op1val:0x50 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x20, 0x50, 5*4, cm.popretz,0x4)

inst_6:
// rs1==x23, rs1_val == 96, 
// opcode: cm.popretz; op1:x23; op2:x1; op1val:0x60 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x23, 0x60, 6*4, cm.popretz,0x4)

inst_7:
// rs1==x22, 
// opcode: cm.popretz; op1:x22; op2:x1; op1val:0x40 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x22, 0x40, 7*4, cm.popretz,0x4)

inst_8:
// rs1==x25, 
// opcode: cm.popretz; op1:x25; op2:x1; op1val:0x50 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x25, 0x50, 8*4, cm.popretz,0x4)

inst_9:
// rs1==x24, 
// opcode: cm.popretz; op1:x24; op2:x1; op1val:0x30 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x24, 0x30, 9*4, cm.popretz,0x4)

inst_10:
// rs1==x27, 
// opcode: cm.popretz; op1:x27; op2:x1; op1val:0x70 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x27, 0x70, 10*4, cm.popretz,0x4)

inst_11:
// rs1==x1, 
// opcode: cm.popretz; op1:x1; op2:x1; op1val:0x10 ; immval:0x4 ;
TEST_POPRETZ(x1, x3, 0 , x1, 0x10, 11*4, cm.popretz,0x4)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x2_0:
    .fill 0*((4)/4),4,0xdeadbeef


signature_x2_1:
    .fill 12*((4)/4),4,0xdeadbeef

#ifdef rvtest_mtrap_routine
tsig_begin_canary:
CANARY;

mtrap_sigptr:
    .fill 64*XLEN/32,4,0xdeadbeef

tsig_end_canary:
CANARY;
#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*XLEN/32,4,0xdeadbeef

#endif


sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
