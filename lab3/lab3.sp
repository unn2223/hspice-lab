lab3.sp

vi 1 0 pulse(0 5 10n 20n 20n 500n 2u)
r1 1 2 1k
r2 2 0 1k
c1 2 0 0.001u

.op
.tran 10n 2u

.option list post node

.print tran v(1) v(2)

.end