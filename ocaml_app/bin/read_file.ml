let read_file file_name =
        let ic = In_channel.open_text file_name in
        let content = In_channel.input_all ic in
        In_channel.close ic;
        content


let read_multiple_lines file_name =
        try 
                let ic = In_channel.open_text file_name in
                let rec loop lines =
                        match In_channel.input_line ic with
                        | Some line -> loop (line :: lines)
                        | None -> In_channel.close ic; List.rev lines
                in
                loop []
        with _ -> failwith ("Cannot read file: " ^ file_name)

