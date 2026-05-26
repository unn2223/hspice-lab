lab1.sp

*Circuit
vi 1 0 dc 10
r1 1 2 1k
r2 2 0 1k

*Anaysis
.op
.dc vi 0 10 1

*option
.option list post node

*Output
.print dc v(1) v(2)

.end
