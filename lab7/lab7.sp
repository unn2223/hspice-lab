lab7.sp

vi   in   0   pulse(0.2 4.8 2n 1n 1n 5n 20n)
vdd  vdd  0   5
mp1  out  in  vdd  vdd  pch  l=1u  w=20u
.model nch nmos level=13
mn1  out  in  0    0    nch  l=1u  w=20u
.model pch pmos level=13
c1   out  0   0.75p

.op
.option list post node

.tran 200p 20n
.print tran v(out) v(in)

.dc vi 0 5 0.5
.print dc   v(out) v(in)

.end