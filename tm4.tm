alphabet: {0, 1, x, y}
start: q0

q0 (0 -> 0,R q1) (1 -> 1,R reject) (_ -> _,H accept)
q1 (0 -> 0,R q1) (1 -> 1,R q2) (_ -> _,L reject)
q2 (1 -> 1,R q2) (0 -> 0,R reject) (_ -> _,S q3)
q3 (0 -> x,R q4) (x -> x,R q3) (1 -> 1,R q5) (y -> y,R q5) (_ -> _,L q5)
q4 (0 -> 0,R q4) (x -> x,R q4) (y -> y,R q4) (1 -> y,S q3) (_ -> _,L reject)
q5 (y -> y,R q5) (1 -> 1,S q6) (_ -> _,L accept)
q6 (x -> 0,R q6) (0 -> 0,R q6) (1 -> 1,R q6) (y -> y,R q6) (_ -> _,S q3)