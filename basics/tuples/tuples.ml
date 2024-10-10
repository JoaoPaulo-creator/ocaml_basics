(* tuplas conseguem "segurar" um número fixo de items de diferentes tipos *)

open Core

let () =
  let five = (5, "five") in
  let _sad = 5, "five" in 
  let (_, second) = five in 
  printf "Eae ocaml, me dê um %s!\n" second;

  let first = five |> fst in 
  printf "Vou te dar 3 + 2 = %d\n" first

