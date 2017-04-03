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
static const char *ng0 = "C:/Users/Brye/Desktop/COMPE475/Single_Cycle_Processor/RegisterFile.v";
static int ng1[] = {0, 0};
static int ng2[] = {32, 0};
static int ng3[] = {33, 0};
static int ng4[] = {31, 0};



static void Always_30_0(char *t0)
{
    char t6[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    int t17;
    char *t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    int t25;

LAB0:    t1 = (t0 + 4264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 5080);
    *((int *)t2) = 1;
    t3 = (t0 + 4296);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3344);
    t8 = (t0 + 3344);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3344);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t6, t7, t10, t13, 2, 1, t14, 32, 1);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t7 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (!(t19));
    t21 = (t17 && t20);
    if (t21 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2464U);
    t3 = *((char **)t2);
    t2 = (t0 + 3344);
    t4 = (t0 + 3344);
    t5 = (t4 + 72U);
    t8 = *((char **)t5);
    t9 = (t0 + 3344);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t6, t7, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t6 + 4);
    t16 = *((unsigned int *)t13);
    t17 = (!(t16));
    t14 = (t7 + 4);
    t19 = *((unsigned int *)t14);
    t20 = (!(t19));
    t21 = (t17 && t20);
    if (t21 == 1)
        goto LAB8;

LAB9:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2624U);
    t3 = *((char **)t2);
    t2 = (t0 + 3344);
    t4 = (t0 + 3344);
    t5 = (t4 + 72U);
    t8 = *((char **)t5);
    t9 = (t0 + 3344);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t6, t7, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t6 + 4);
    t16 = *((unsigned int *)t13);
    t17 = (!(t16));
    t14 = (t7 + 4);
    t19 = *((unsigned int *)t14);
    t20 = (!(t19));
    t21 = (t17 && t20);
    if (t21 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3344);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3344);
    t8 = (t5 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 3344);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = (t0 + 1664U);
    t14 = *((char **)t13);
    xsi_vlog_generic_get_array_select_value(t6, 32, t4, t9, t12, 2, 1, t14, 5, 2);
    t13 = (t0 + 3024);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3344);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3344);
    t8 = (t5 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 3344);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = (t0 + 1824U);
    t14 = *((char **)t13);
    xsi_vlog_generic_get_array_select_value(t6, 32, t4, t9, t12, 2, 1, t14, 5, 2);
    t13 = (t0 + 3184);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB2;

LAB6:    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 - t23);
    t25 = (t24 + 1);
    xsi_vlogvar_assign_value(t5, t4, 0, *((unsigned int *)t7), t25);
    goto LAB7;

LAB8:    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 - t23);
    t25 = (t24 + 1);
    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t7), t25);
    goto LAB9;

LAB10:    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 - t23);
    t25 = (t24 + 1);
    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t7), t25);
    goto LAB11;

}

static void Always_39_1(char *t0)
{
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;

LAB0:    t1 = (t0 + 4512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5096);
    *((int *)t2) = 1;
    t3 = (t0 + 4544);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(41, ng0);
    t11 = (t0 + 2144U);
    t12 = *((char **)t11);
    t11 = (t0 + 3344);
    t15 = (t0 + 3344);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 3344);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = (t0 + 1984U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t22, 5, 2);
    t21 = (t13 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    goto LAB8;

LAB9:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t11, t12, 0, *((unsigned int *)t14), t32);
    goto LAB10;

}

static void Always_44_2(char *t0)
{
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;

LAB0:    t1 = (t0 + 4760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5112);
    *((int *)t2) = 1;
    t3 = (t0 + 4792);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);
    t11 = (t0 + 2304U);
    t12 = *((char **)t11);
    t11 = (t0 + 3344);
    t15 = (t0 + 3344);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 3344);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t21, 32, 1);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    goto LAB8;

LAB9:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t11, t12, 0, *((unsigned int *)t14), t32);
    goto LAB10;

}


extern void work_m_00000000002835738364_3674772129_init()
{
	static char *pe[] = {(void *)Always_30_0,(void *)Always_39_1,(void *)Always_44_2};
	xsi_register_didat("work_m_00000000002835738364_3674772129", "isim/tb_Processor_isim_beh.exe.sim/work/m_00000000002835738364_3674772129.didat");
	xsi_register_executes(pe);
}
