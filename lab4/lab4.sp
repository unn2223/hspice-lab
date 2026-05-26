lab4.sp

vi 5 0 pwl(0 0 1u 0 20u 1 20.1u 0) ac 1 
r1 5 1 1
l1 1 2 0.38267u
c1 2 0 1.0824n
l2 2 3 1.5772u
c2 3 0 1.5307n

.op
.option list post node
.ac dec 20 100 100meg
.tran 2u 40u

.probe ac vdb(3) vp(3)
.probe tran v(3)

.end