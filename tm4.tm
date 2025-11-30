alphabet: {0, 1, x, z}
start: q0

q0 (0 -> 0,R q1) (1 -> 1,R reject) (x -> x,R reject) (z -> z,R reject) (_ -> _,L reject)
q1 (0 -> 0,R q1) (1 -> 1,R q2) (x -> x,R reject) (z -> z,R reject) (_ -> _,L reject)
q2 (1 -> 1,R q2) (0 -> 0,R reject) (x -> x,R reject) (z -> z,R reject) (_ -> _,L q3)
q3 (0 -> 0,L q3) (1 -> 1,L q3) (x -> x,L q3) (z -> z,L q3) (_ -> _,R q4)
q4 (0 -> 0,R q4) (x -> x,R q4) (z -> z,R q4) (1 -> 1,L q5) (_ -> _,L accept)
q5 (0 -> 0,L q5) (1 -> 1,L q5) (x -> x,L q5) (z -> z,L q5) (_ -> _,R q6)
q6 (z -> z,R q6) (0 -> z,R q7) (1 -> 1,L q9) (x -> x,L q9) (_ -> _,L q9)
q7 (z -> z,R q7) (0 -> 0,R q7) (x -> x,R q7) (1 -> x,L q8) (_ -> _,L reject)
q8 (0 -> 0,L q8) (1 -> 1,L q8) (x -> x,L q8) (z -> z,L q8) (_ -> _,R q6)
q9 (z -> 0,L q9) (0 -> 0,L q9) (1 -> 1,L q9) (x -> x,L q9) (_ -> _,R q4)