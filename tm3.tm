alphabet: {0, 1, 2, x}
start: q0

q0 (0 -> x,R q1) (1 -> 1,R q0) (2 -> 2,R q0) (x -> x,R q0) (_ -> _,L q4)
q1 (0 -> 0,R q1) (1 -> x,R q2) (2 -> 2,R q1) (x -> x,R q1) (_ -> _,L reject)
q2 (0 -> 0,R q2) (1 -> 1,R q2) (2 -> x,L q3) (x -> x,R q2) (_ -> _,L reject)
q3 (0 -> 0,L q3) (1 -> 1,L q3) (2 -> 2,L q3) (x -> x,L q3) (_ -> _,R q0)
q4 (0 -> 0,L q4) (1 -> 1,L q4) (2 -> 2,L q4) (x -> x,L q4) (_ -> _,R q5)
q5 (0 -> 0,R q5) (1 -> 1,L q10) (2 -> 2,R q5) (x -> x,R q5) (_ -> _,L reject)
q10 (0 -> 0,L q10) (1 -> 1,L q10) (2 -> 2,L q10) (x -> x,L q10) (_ -> _,R q6)
q6 (0 -> 0,R q6) (1 -> x,R q7) (2 -> 2,R q6) (x -> x,R q6) (_ -> _,L q9)
q7 (0 -> 0,R q7) (1 -> 1,R q7) (2 -> x,L q8) (x -> x,R q7) (_ -> _,L reject)
q8 (0 -> 0,L q8) (1 -> 1,L q8) (2 -> 2,L q8) (x -> x,L q8) (_ -> _,R q6)
q9 (0 -> 0,R q9) (1 -> 1,R q9) (2 -> 2,H accept) (x -> x,R q9) (_ -> _,L reject)