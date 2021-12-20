ternary circuits

.options POST
.options AUTOSTOP
.options INGOLD=2     DCON=1
.options GSHUNT=1e-12 RMIN=1e-15 
.options ABSTOL=1N  ABSVDC=1e-4 
.options RELTOL=1e-2  RELVDC=1e-2 
.options NUMDGT=4     PIVOT=13
.options VNTOL=1M
.OPTION CONVERGE=5
.options dcstep = 100
.OPTIONS METHOD=GEAR
.param TEMP = 25
.options runlvl=0

.lib 'CNFET.lib' CNFET 

*Some CNFET parameters:
.param Ccsd=0      CoupleRatio=0
.param m_cnt=1     Efo=0.6     
.param Wg=0        Cb=40e-12
.param Lg=32e-9    Lgef=100e-9
.param Vfn=0       Vfp=0
.param m=19        n=0        
.param Hox=4e-9    Kox=16 

Vd     	top     Gnd     0.9
Vm		top		vdd		0

Vin0 in_b0 gnd PWL(0ps 0.00v 199ps 0.00v 200ps 0.90v 399ps 0.90v 400ps 0.00v 599ps 0.00v 600ps 0.90v 799ps 0.90v 800ps 0.00v 999ps 0.00v 1000ps 0.90v 1199ps 0.90v 1200ps 0.00v 1399ps 0.00v 1400ps 0.90v 1599ps 0.90v 1600ps 0.00v 1799ps 0.00v 1800ps 0.90v 1999ps 0.90v 2000ps 0.00v 2199ps 0.00v 2200ps 0.90v 2399ps 0.90v 2400ps 0.00v 2599ps 0.00v 2600ps 0.90v 2799ps 0.90v 2800ps 0.00v 2999ps 0.00v 3000ps 0.90v 3200ps 0.90v)

Vin1 in_b1 gnd PWL(0ps 0.00v 399ps 0.00v 400ps 0.90v 799ps 0.90v 800ps 0.00v 1199ps 0.00v 1200ps 0.90v 1599ps 0.90v 1600ps 0.00v 1999ps 0.00v 2000ps 0.90v 2399ps 0.90v 2400ps 0.00v 2799ps 0.00v 2800ps 0.90v 3200ps 0.90v)

Vin2 in_b2 gnd PWL(0ps 0.00v 799ps 0.00v 800ps 0.90v 1599ps 0.90v 1600ps 0.00v 2399ps 0.00v 2400ps 0.90v 3200ps 0.90v)

Vin3 in_b3 gnd PWL(0ps 0.00v 1599ps 0.00v 1600ps 0.90v 3200ps 0.90v)

.include 'c_4B4TwoBody.sp' 
xTFA in_b3 in_b2 in_b1 in_b0 out_t3 out_t2 out_t1 out_t0 vdd c_4B4TwoBody 

***********************************************************************
* Measurements
***********************************************************************

.measure tran iavgsum avg i(vm) from=0ps to=3200ps

.tran 10ps 3200ps

.print V(in_b3)
.print V(in_b2)
.print V(in_b1)
.print V(in_b0)

.print V(out_t3)
.print V(out_t2)
.print V(out_t1)
.print V(out_t0)

.end 




