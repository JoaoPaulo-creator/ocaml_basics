let two_sum nums target = 
        let hash = Hashtbl.create (Array.length nums) in
        let rec loop i =
                match i >= Array.length nums with
                | true -> None
                | false ->
                        match Hashtbl.find_opt hash (target - nums.(i)) with
                        | Some j -> Some (j, i)
                        | None -> 
                                Hashtbl.add hash nums.(i) i;
                                loop (i + 1)
        in
        loop 0
