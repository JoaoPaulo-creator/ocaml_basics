(* função recursiva *)
let rec factorial n = 
        match n with
        | 0 -> 1
        | n -> n * factorial(n - 1)

let () = 
        print_endline (string_of_int (factorial(5)));
        print_endline (string_of_int (Helper.add 3 4));
        let nums = [|2; 7; 11; 15|] in
        let target = 26 in
        match Two_sum.two_sum nums target with
        | Some (i, j )-> Printf.printf "Indices: %d, %d\n" i j
        | None -> print_endline "No solution"
