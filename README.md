Lazyness in Ocaml with Syntax Extensions
========================================

LazySugar.ml provides force and delay operators implemented as synatic sugar using camlp5 preprocessor.
This is completely useless since Ocaml already provides a Lazy module, but it was fun anyway :). 

Delay and force can be expessed as syntactic sugar as following:

![equation](http://www.sciweavers.org/tex2img.php?eq=lazy%20%5C%3B%20e%20%5C%3B%20%26%20%5Cequiv%20%26%20%5C%3B%20ref%20%5C%3B%20%28fun%20%5C%3B%20%28%29%20%5C%3B%20%5Crightarrow%20%5C%3B%20e%29%5C%5C%0Aforce%20%5C%3B%20e%20%5C%3B%20%26%20%5Cequiv%20%26%20%5C%3B%20%28%28fun%20%5C%3B%20y%20%5C%3B%20%5Crightarrow%20%5C%3B%20e%20%5C%3B%20%3A%3D%20%28fun%20%5C%3B%20%28%29%20%5C%3B%20%5Crightarrow%20%5C%3B%20y%29%29%20%5C%3B%20%28%21e%20%5C%3B%20%28%29%29%3B%20%5C%3B%20%21e%20%5C%3B%20%28%29%29&bc=White&fc=Black&im=jpg&fs=12&ff=mathptmx&edit=0)

Usage
-----
To compile LazySugar.ml:

	$ ocamlc  -pp "camlp5o pa_extend.cmo q_MLast.cmo" -I +camlp5 -c LazySugar.ml

To use delay and force in an ocaml program, namely test.ml:

	$ ocamlc -pp "camlp5o ./LazySugar.cmo" test.ml -o test

