lab2.sp

*circuit
vi 1 0 dc 10 ac 1
r1 1 2 1k
r2 2 0 1k
c1 2 0 0.001u

*anaysis
.op
.ac dec 10 1k 1meg

*option
.option list post node

*output
.print ac v(1) v(2) i(r2) i(c1)

.end
