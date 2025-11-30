alphabet: {0, 1, x, y}
start: q0

q0 (0 -> 0,R q1) (1 -> 1,R reject) (_ -> _,L accept)
q1 (0 -> 0,R q1) (1 -> 1,R q2) (_ -> _,L reject)
q2 (1 -> 1,R q2) (0 -> 0,R reject) (_ -> _,L q3)
q3 (x -> 0,L q3) (0 -> 0,L q3) (1 -> 1,L q3) (y -> y,L q3) (_ -> _,R q4)
q4 (x -> x,R q4) (0 -> x,R q5) (1 -> 1,H q6) (y -> y,H q6) (_ -> _,L q6)
q5 (x -> x,R q5) (0 -> 0,R q5) (y -> y,R q5) (1 -> y,L q7) (_ -> _,L reject)
q7 (x -> x,L q7) (0 -> 0,L q7) (1 -> 1,L q7) (y -> y,L q7) (_ -> _,R q4)
q6 (1 -> 1,H q3) (y -> y,R q6) (x -> x,R q6) (0 -> 0,R q6) (_ -> _,L accept)