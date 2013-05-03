Lazyness in Ocaml with Syntax Extensions
========================================

LazySugar.ml provides force and delay operators implemented as synatic sugar using camlp5 preprocessor.
This is completely useless since Ocaml already provides a Lazy module, but it was fun anyway :). 

Delay and force can be expessed as syntactic sugar as following:

![equation](http://www.sciweavers.org/upload/Tex2Img_1367592285/render.png)

Usage
-----
To compile LazySugar.ml:

		ocamlc  -pp "camlp5o pa_extend.cmo q_MLast.cmo" -I +camlp5 -c LazySugar.ml

To to use delay and force in an ocaml program, namely test.ml:

		ocamlc -pp "camlp5o ./LazySugar.cmo" test.ml -o test

