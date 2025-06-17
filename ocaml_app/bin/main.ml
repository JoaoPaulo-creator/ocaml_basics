let () = 

        Printf.printf "reading file in ocaml\n";
        let filename = "input.txt" in
        let content = Read_file.read_file filename in
        print_endline content;


        print_endline (string_of_int (Factorial.factorial(5)));
        print_endline (string_of_int (Helper.add 3 4));
        let list = [|2; 4; 6|] in
        let mapped = Map_lists.map_lists list in
        let mapped_str = "[" ^ String.concat ", " (List.map string_of_int mapped ) ^ "]" in
        Printf.printf "result of a mapped list: %s\n" mapped_str;

        let nums = [|2; 7; 11; 15|] in
        let target = 26 in
        match Two_sum.two_sum nums target with
        | Some (i, j )-> Printf.printf "Indices: %d, %d\n" i j
        | None -> print_endline "No solution";


