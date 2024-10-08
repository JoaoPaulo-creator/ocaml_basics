print_endline "Ola, mundo"

let () = print_endline "Ola, mundo de dentro da função principal"


let () = 
        Core.printf "%s\n" "ola, mundo usando core.printf"

open Core

let () = 
        printf "%s\n" "ola mundo usando open core"
