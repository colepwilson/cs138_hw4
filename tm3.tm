alphabet: {0, 1, 2, x, _}
start: q0

q0 (0 -> x, R q1) (1 -> 1, R q4) (2 -> 2, R q4) (_ -> _, L reject)
q1 (0 -> 0, R q1) (x -> x, R q1) (1 -> x, R q2) (2 -> 2, R q1) (_ -> _, L reject)
q2 (1 -> 1, R q2) (x -> x, R q2) (2 -> x, L q3) (_ -> _, L reject)
q3 (x -> x, L q3) (0 -> 0, L q3) (1 -> 1, L q3) (2 -> 2, L q3) (_ -> _, R q0)
q4 (1 -> x, R q5) (2 -> 2, R q6) (_ -> _, L q7)
q5 (1 -> 1, R q5) (x -> x, R q5) (2 -> x, L q3) (_ -> _, L q7)
q6 (2 -> 2, R q6) (x -> x, R q6) (_ -> _, L accept)
q7 (. -> ., R reject)