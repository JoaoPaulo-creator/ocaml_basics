(* variants são enums, só que melhor *)

type container =
| SmallBox
| BigBox of int
| HugeBox of int * string;;

let box = BigBox(5);;

let () =
match  box with
| BigBox (i) -> print_string "a big box of" ^ i
| _ -> print_endline "qualquer outra coisa";;
