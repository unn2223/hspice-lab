lab5.sp

vi 1 0 dc dv $vi 1 0 dv
d1 1 0 df
.model df d(is = 2.6615e-16 rs = 0.0)

.op
.option list post node
.dc dv -1 1 5m

.probe dc v(1) i(d1)

.end