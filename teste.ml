let rec append_to_file file_name linha_digitada =
  let arquivo = open_out file_name in 
  let linha = read_line () in
  if linha = "" then close_out arquivo
  else 
  begin
    output_string arquivo (linha_digitada ^ linha ^ "\n" );
    append_to_file file_name (linha_digitada ^ linha ^ "\n" );
  end

let () =
  let file_name = "exemplo.txt" in (* Nome do arquivo *)
  append_to_file file_name "";;
