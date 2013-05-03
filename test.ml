let x = ref 0 in
let y = delay (x := !x + 2; !x) in
let f x = ((force x) + (force x))*5 + 1 in 
let _ = delay (x := 100) in
Printf.printf "%d\n" ((f y)*(!x)); (* Yes the answer is zero *)
Printf.printf "%d\n" ((f y)*(!x))  (* Now the answer is 42. Magic! *)
