/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Brye/Desktop/COMPE475/Single_Cycle_Processor/tb_Processor.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "dump.vcd";
static const char *ng4 = "uut";



static void Initial_41_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(41, ng0);

LAB2:    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1448);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1608);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_43_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 2776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);

LAB4:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2584);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t6) == 0)
        goto LAB6;

LAB8:    t12 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t3 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t3) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t3) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

}

static void Initial_47_2(char *t0)
{
    char *t1;

LAB0:    xsi_set_current_line(47, ng0);

LAB2:    xsi_set_current_line(48, ng0);
    xsi_vcd_dumpfile(ng3);
    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng1)));
    xsi_vcd_dumpvars_args(*((unsigned int *)t1), t0, (char)115, ng4, (char)101);

LAB1:    return;
}

static void Initial_52_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;

LAB0:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB4:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3592);
    *((int *)t2) = 1;
    t3 = (t0 + 3304);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3608);
    *((int *)t2) = 1;
    t3 = (t0 + 3304);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 3624);
    *((int *)t4) = 1;
    t5 = (t0 + 3304);
    *((char **)t5) = t4;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(57, ng0);
    t6 = (t0 + 3640);
    *((int *)t6) = 1;
    t7 = (t0 + 3304);
    *((char **)t7) = t6;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(58, ng0);
    t8 = (t0 + 3656);
    *((int *)t8) = 1;
    t9 = (t0 + 3304);
    *((char **)t9) = t8;
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(59, ng0);
    t10 = (t0 + 3672);
    *((int *)t10) = 1;
    t11 = (t0 + 3304);
    *((char **)t11) = t10;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(60, ng0);
    t12 = (t0 + 3688);
    *((int *)t12) = 1;
    t13 = (t0 + 3304);
    *((char **)t13) = t12;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(61, ng0);
    t14 = (t0 + 3704);
    *((int *)t14) = 1;
    t15 = (t0 + 3304);
    *((char **)t15) = t14;
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(62, ng0);
    t16 = (t0 + 3720);
    *((int *)t16) = 1;
    t17 = (t0 + 3304);
    *((char **)t17) = t16;
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(63, ng0);
    t18 = (t0 + 3736);
    *((int *)t18) = 1;
    t19 = (t0 + 3304);
    *((char **)t19) = t18;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(64, ng0);
    t20 = (t0 + 3752);
    *((int *)t20) = 1;
    t21 = (t0 + 3304);
    *((char **)t21) = t20;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(65, ng0);
    t22 = (t0 + 3768);
    *((int *)t22) = 1;
    t23 = (t0 + 3304);
    *((char **)t23) = t22;
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(66, ng0);
    t24 = (t0 + 3784);
    *((int *)t24) = 1;
    t25 = (t0 + 3304);
    *((char **)t25) = t24;
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(67, ng0);
    t26 = (t0 + 3800);
    *((int *)t26) = 1;
    t27 = (t0 + 3304);
    *((char **)t27) = t26;
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(68, ng0);
    t28 = (t0 + 3816);
    *((int *)t28) = 1;
    t29 = (t0 + 3304);
    *((char **)t29) = t28;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(69, ng0);
    t30 = (t0 + 3832);
    *((int *)t30) = 1;
    t31 = (t0 + 3304);
    *((char **)t31) = t30;
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(70, ng0);
    t32 = (t0 + 3848);
    *((int *)t32) = 1;
    t33 = (t0 + 3304);
    *((char **)t33) = t32;
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(71, ng0);
    t34 = (t0 + 3864);
    *((int *)t34) = 1;
    t35 = (t0 + 3304);
    *((char **)t35) = t34;
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(72, ng0);
    t36 = (t0 + 3880);
    *((int *)t36) = 1;
    t37 = (t0 + 3304);
    *((char **)t37) = t36;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(73, ng0);
    t38 = (t0 + 3896);
    *((int *)t38) = 1;
    t39 = (t0 + 3304);
    *((char **)t39) = t38;
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(74, ng0);
    t40 = (t0 + 3912);
    *((int *)t40) = 1;
    t41 = (t0 + 3304);
    *((char **)t41) = t40;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(75, ng0);
    t42 = (t0 + 3928);
    *((int *)t42) = 1;
    t43 = (t0 + 3304);
    *((char **)t43) = t42;
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(76, ng0);
    t44 = (t0 + 3944);
    *((int *)t44) = 1;
    t45 = (t0 + 3304);
    *((char **)t45) = t44;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(77, ng0);
    t46 = (t0 + 3960);
    *((int *)t46) = 1;
    t47 = (t0 + 3304);
    *((char **)t47) = t46;
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(78, ng0);
    t48 = (t0 + 3976);
    *((int *)t48) = 1;
    t49 = (t0 + 3304);
    *((char **)t49) = t48;
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(79, ng0);
    t50 = (t0 + 3992);
    *((int *)t50) = 1;
    t51 = (t0 + 3304);
    *((char **)t51) = t50;
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(80, ng0);
    t52 = (t0 + 4008);
    *((int *)t52) = 1;
    t53 = (t0 + 3304);
    *((char **)t53) = t52;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(81, ng0);
    t54 = (t0 + 4024);
    *((int *)t54) = 1;
    t55 = (t0 + 3304);
    *((char **)t55) = t54;
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(82, ng0);
    t56 = (t0 + 4040);
    *((int *)t56) = 1;
    t57 = (t0 + 3304);
    *((char **)t57) = t56;
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(83, ng0);
    t58 = (t0 + 4056);
    *((int *)t58) = 1;
    t59 = (t0 + 3304);
    *((char **)t59) = t58;
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(84, ng0);
    t60 = (t0 + 4072);
    *((int *)t60) = 1;
    t61 = (t0 + 3304);
    *((char **)t61) = t60;
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB35:    xsi_set_current_line(85, ng0);
    t62 = (t0 + 4088);
    *((int *)t62) = 1;
    t63 = (t0 + 3304);
    *((char **)t63) = t62;
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB36:    xsi_set_current_line(86, ng0);
    t64 = (t0 + 4104);
    *((int *)t64) = 1;
    t65 = (t0 + 3304);
    *((char **)t65) = t64;
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB37:    xsi_set_current_line(87, ng0);
    t66 = (t0 + 4120);
    *((int *)t66) = 1;
    t67 = (t0 + 3304);
    *((char **)t67) = t66;
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB38:    xsi_set_current_line(88, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}


extern void work_m_00000000003956616995_0802805099_init()
{
	static char *pe[] = {(void *)Initial_41_0,(void *)Always_43_1,(void *)Initial_47_2,(void *)Initial_52_3};
	xsi_register_didat("work_m_00000000003956616995_0802805099", "isim/tb_Processor_isim_beh.exe.sim/work/m_00000000003956616995_0802805099.didat");
	xsi_register_executes(pe);
}
