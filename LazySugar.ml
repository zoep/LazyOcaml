open Pcaml

EXTEND
  expr: LEVEL "simple"
  [[ "delay"; e = expr ->  
       (* Store the unevaluated expression in a thunk (i.e. a reference to an
        * anonymous function with a unit type parameter, which wraps the initial
        * expression) *)
       <:expr< ref (fun () -> ($e$)) >>
   | "force"; v = LIDENT -> 
       (* Evaluate the suspended computation by calling the function stored
        * inside the thunk. Replace the contents of the thunk with the value
        * of the computation and return the value. *)
        <:expr< do { (fun y -> ($lid:v$.val := fun () -> y)) ($lid:v$.val ()); ($lid:v$.val ())} >> 
  ]];
END;;

