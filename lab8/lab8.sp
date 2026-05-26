lab8.sp

vdd  vdd 0 dc 2.5
vss  vss 0 dc -2.5
vin1 1   0 dc 0 ac 1
vin2 2   0 dc 0

m1  3   2   5    vss   n  w=101u   l=1.2u
m2  4   1   5    vss   n  w=101u   l=1.2u
m3  5   8   vss  vss   n  w=62u    l=1.2u
m4  3   3   vdd  vdd   p  w=50u    l=1.2u
m5  4   3   vdd  vdd   p  w=50u    l=1.2u
m6  7   4   vdd  vdd   p  w=101u   l=1.2u
m7  7   8   vss  vss   n  w=62u    l=1.2u
m8  6   9   4    vdd   p  w=10u    l=1.2u
m9  9   8   vss  vss   n  w=6u     l=1.2u
m10 9   9   10   vdd   p  w=4u     l=1.2u
m11 10  10  vdd  vdd   p  w=4u     l=1.2u
m12 8   8   vss  vss   n  w=6u     l=1.2u
m13 8   9   12   vdd   p  w=4u     l=1.2u
m14 12  10  11   vdd   p  w=16u    l=1.2u
m15 14  14  vss  vss   n  w=6u     l=1.2u
m16 vdd 14  8    vss   n  w=6u     l=1.2u
m17 13  13  14   vss   n  w=2.5u   l=1.2u
m18 vdd vdd 13   vss   n  w=2.5u   l=1.2u
.model n nmos  tox=200e-10  uo=500  vto=0.8
+lambda=0.08 cgdo=300p cgso=300p cj=2.75e-4 cjsw=1.9e-10
+ld=0.2u level=1 phi=0.7 pb=0.8 gamma=0.8
.model  p  pmos  tox=200e-10 uo=200 vto=-0.8
+lambda=0.1 cgdo=300p cgso=300p cj=2.75e-4 cjsw=1.9e-10
+ld=0.2u level=1  phi=0.7 pb=0.8 gamma=0.8

rb vdd  11   7.6k
cc 6    7    2.35p
cl 7    0    20p 

.op
.ac dec 10  1 10g
.noise v(7) vin1 $node7=vout

.print noise onoise inoise
.print ac vdb(7) vp(7)
.probe ac vdb(7) vp(7)

.end