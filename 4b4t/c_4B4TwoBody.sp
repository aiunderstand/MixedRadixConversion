*** STATS
*** @tcount 176
*** @gcount 11
*** @ugcount 11
*** @abslvl 1

*** SEMANTIC INTERFACE

*** @i Binary
*** @id -5576
*** @size 4
*** @iolbl i_b3_0 i_b2_1 i_b1_2 i_b0_3 
*** @pos2d -295.7007 34.1693

*** @o BalancedTernary
*** @id -5294
*** @size 4
*** @iolbl o_t3_7 o_t2_6 o_t1_4 o_t0_5 
*** @pos2d 437.9164 27.8927

*** CONNECTION DATA
*** @conn -5576 3 -2478 1
*** @conn -5576 2 -2478 0
*** @conn -2478 2 -880694 1
*** @conn -5576 1 -880694 0
*** @conn -5576 0 -901214 0
*** @conn -5576 0 -904716 0
*** @conn -5576 0 -908130 1
*** @conn -5576 0 -911546 1
*** @conn -908130 2 -5294 1
*** @conn -911546 2 -5294 0
*** @conn -894396 2 -5294 2
*** @conn -901214 2 -5294 3
*** @conn -880694 2 -901214 1
*** @conn -880694 2 -904716 1
*** @conn -5576 3 -884094 1
*** @conn -5576 2 -884094 0
*** @conn -5576 1 -884094 2
*** @conn -884094 3 -887496 0
*** @conn -5576 2 -887496 1
*** @conn -887496 2 -890990 1
*** @conn -887496 2 -897804 1
*** @conn -5576 1 -890990 0
*** @conn -890990 2 -894396 1
*** @conn -904716 2 -894396 0
*** @conn -904716 2 -897804 2
*** @conn -5576 1 -897804 0
*** @conn -897804 3 -908130 0
*** @conn -897804 3 -911546 0

.subckt c_4B4TwoBody i_b3_0 i_b2_1 i_b1_2 i_b0_3 o_t3_7 o_t2_6 o_t1_4 o_t0_5 vdd
.include "f_HE4.sp"
.include "f_5XC.sp"
.include "f_HHDDXXDDD.sp"
.include "f_ZZR.sp"
.include "f_5XX.sp"
.include "f_XE2.sp"
.include "f_RRDRDDDDD.sp"
.include "f_H4K.sp"
.include "f_DD4.sp"
.include "f_88R.sp"
.include "f_RRD.sp"
.include "nti.sp" 
.include "pti.sp"

*** @f HE4
*** @id -2478
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d -206.3389 126.7012
xpti0 i_b0_3 i_b0_3_p vdd pti
xnti1 i_b0_3 i_b0_3_n vdd nti

xckt0 i_b1_2 i_b0_3_p i_b0_3_n lg_HE4_8 vdd f_HE4

*** @f 5XC
*** @id -880694
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d -48.04106 210.9566
xnti2 i_b2_1 i_b2_1_n vdd nti
xpti3 lg_HE4_8 lg_HE4_8_p vdd pti
xnti4 lg_HE4_8 lg_HE4_8_n vdd nti

xckt1 i_b2_1 i_b2_1_n lg_HE4_8 lg_HE4_8_p lg_HE4_8_n lg_5XC_9 vdd f_5XC

*** @f HHDDXXDDD
*** @id -884094
*** @radixType BalancedTernary
*** @arity 3
*** @pos2d -49.74319 74.78635
xnti5 i_b1_2 i_b1_2_n vdd nti
xpti6 i_b2_1 i_b2_1_p vdd pti

xckt2 i_b1_2 i_b1_2_n i_b0_3 i_b0_3_n i_b2_1 i_b2_1_p i_b2_1_n lg_HHDDXXDDD_10 vdd f_HHDDXXDDD

*** @f ZZR
*** @id -887496
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d -55.70063 -81.80939
xpti7 lg_HHDDXXDDD_10 lg_HHDDXXDDD_10_p vdd pti

xckt3 lg_HHDDXXDDD_10_p i_b1_2_n lg_ZZR_11 vdd f_ZZR

*** @f 5XX
*** @id -890990
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d 82.17171 -59.68174
xpti8 lg_ZZR_11 lg_ZZR_11_p vdd pti

xckt4 i_b2_1 i_b2_1_n lg_ZZR_11 lg_ZZR_11_p lg_5XX_12 vdd f_5XX

*** @f XE2
*** @id -894396
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d 216.6398 18.61614
xnti9 lg_DD4_13 lg_DD4_13_n vdd nti
xpti10 lg_5XX_12 lg_5XX_12_p vdd pti
xnti11 lg_5XX_12 lg_5XX_12_n vdd nti

xckt5 lg_DD4_13 lg_DD4_13_n lg_5XX_12 lg_5XX_12_p lg_5XX_12_n o_t1_4 vdd f_XE2

*** @f RRDRDDDDD
*** @id -897804
*** @radixType BalancedTernary
*** @arity 3
*** @pos2d 215.7887 -118.4051
xnti12 lg_ZZR_11 lg_ZZR_11_n vdd nti
xpti13 lg_DD4_13 lg_DD4_13_p vdd pti

xckt6 i_b2_1_p lg_ZZR_11_p lg_ZZR_11_n lg_DD4_13_p lg_DD4_13_n lg_RRDRDDDDD_14 vdd f_RRDRDDDDD

*** @f H4K
*** @id -901214
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d 337.4909 212.6587
xpti14 i_b3_0 i_b3_0_p vdd pti
xpti15 lg_5XC_9 lg_5XC_9_p vdd pti
xnti16 lg_5XC_9 lg_5XC_9_n vdd nti

xckt7 i_b3_0 i_b3_0_p lg_5XC_9 lg_5XC_9_p lg_5XC_9_n o_t0_5 vdd f_H4K

*** @f DD4
*** @id -904716
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d 340.0441 93.50976

xckt8 i_b3_0 lg_5XC_9_n lg_DD4_13 vdd f_DD4

*** @f 88R
*** @id -908130
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d 344.2994 -129.469
xpti17 lg_RRDRDDDDD_14 lg_RRDRDDDDD_14_p vdd pti
xnti18 i_b3_0 i_b3_0_n vdd nti

xckt9 lg_RRDRDDDDD_14 lg_RRDRDDDDD_14_p i_b3_0 i_b3_0_n o_t2_6 vdd f_88R

*** @f RRD
*** @id -911546
*** @radixType BalancedTernary
*** @arity 2
*** @pos2d 342.5973 -251.1711

xckt10 lg_RRDRDDDDD_14_p i_b3_0_n o_t3_7 vdd f_RRD



.ends

