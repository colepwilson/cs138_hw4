alphabet: {0, 1, x, y, _}
start: q0

q0 (0 -> x, R q1) (x -> x, R q0) (1 -> 1, R q3) (_ -> _, L q5)
q1 (0 -> 0, R q1) (x -> x, R q1) (1 -> y, L q2) (_ -> _, L reject)
q2 (y -> y, L q2) (1 -> 1, L q2) (x -> x, L q2) (0 -> 0, L q2) (_ -> _, R q0)
q3 (1 -> 1, R q3) (_ -> _, L q4)
q4 (y -> y, L q4) (x -> x, L q4) (_ -> _, R accept)
q5 (. -> ., R reject)