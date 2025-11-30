alphabet: {0, 1, 2, x, y, z}
start: q0

q0 (0 -> x,S q1) (1 -> 1,R q0) (2 -> 2,R q0) (x -> x,R q0) (y -> y,R q0) (z -> z,R q0) (_ -> _,S q2)
q1 (1 -> y,S q0) (0 -> 0,R q1) (2 -> 2,R q1) (x -> x,R q1) (y -> y,R q1) (z -> z,R q1) (_ -> _,L reject)
q2 (1 -> 1,S q3) (0 -> 0,R q2) (2 -> 2,R q2) (x -> x,R q2) (y -> y,R q2) (z -> z,R q2) (_ -> _,L reject)
q3 (1 -> x,S q4) (y -> x,S q4) (0 -> 0,R q3) (2 -> 2,R q3) (x -> x,R q3) (z -> z,R q3) (_ -> _,S q5)
q4 (2 -> z,S q3) (0 -> 0,R q4) (1 -> 1,R q4) (x -> x,R q4) (y -> y,R q4) (z -> z,R q4) (_ -> _,L reject)
q5 (2 -> 2,H accept) (0 -> 0,R q5) (1 -> 1,R q5) (x -> x,R q5) (y -> y,R q5) (z -> z,R q5) (_ -> _,L reject)