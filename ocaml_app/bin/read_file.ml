let read_file file_name =
        let ic = In_channel.open_text file_name in
        let content = In_channel.input_all ic in
        In_channel.close ic;
        content
