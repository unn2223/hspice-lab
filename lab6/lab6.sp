lab6.sp

v1 1 0 sin(0 1 1k)
v2 3 0 dc 0.5
d1 2 1 DN4148
.model DN4148 D (CJO=5PF VJ=0.6 M=0.45 RS=0.8 IS=7e-9
+ N=2 TT=6e-9 BV=100)
r1 2 3 1

.op
.option list post node
.tran 10u 3m

* .print dc v(2) v(1) <- dc sweep이 없으므로 의미없는 문장
.print tran v(2) v(1)
.probe tran v(2) v(1)

.end