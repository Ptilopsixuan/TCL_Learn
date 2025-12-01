set A 1
puts {$A\n}
puts "$A\n"

model basic -ndm 2 -ndf 3

node 1 0.0 0.0
node 2 1.0 0.0
node 3 0.0 1.0
node 4 1.0 1.0

fix 1 1 1 1
fix 2 1 1 1
fix 3 0 0 0
fix 4 0 0 0

mass 3 1 0 0
mass 4 1 0 0

geomTransf Linear 1

element elasticBeamColumn 1 1 3 3000.0 300000.0 1
element elasticBeamColumn 2 3 4 3000.0 300000.0 1
element elasticBeamColumn 3 2 4 3000.0 300000.0 1

