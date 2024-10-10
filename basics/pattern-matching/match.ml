let rec fact n =
  match n with
  | 0 -> 1
  | _ -> n * fact (n - 1);;


let () =
  let r = fact 5 in
  print_int r;;