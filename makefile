all:
	ocamlyacc Calc.mly
	ocamlc -c Calc.mli
	ocamlc -c Calc.ml
	ocamllex Calc1.mll
	ocamlc -c Calc1.ml
	ocamlc -c main.ml
	ocamlc -o Calc Calc.cmo Calc1.cmo main.cmo
