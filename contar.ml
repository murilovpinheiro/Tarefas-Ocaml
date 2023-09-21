let dividir_em_lista_palavras string_recebida = 
  let lista = String.split_on_char ' ' (String.trim string_recebida) in
  let final = List.filter (fun s -> s <> "") lista in final;;

let contar nome_arq =
  let arquivo = open_in nome_arq in
  let rec aux (linhas, palavras, caracters) =
    try
      let linha_lida = input_line arquivo in
      let num_carac = String.length linha_lida in
      let lista_palavras = dividir_em_lista_palavras linha_lida in
      let num_palavras = List.length lista_palavras in
      aux (linhas + 1, palavras + num_palavras, caracters + num_carac)
    with
      End_of_file -> close_in arquivo;
                     (linhas, palavras, caracters)
  in
  let linhas, palavras, caracters = aux (0, 0, 0) in
  Printf.printf "Número de linhas: %d\n" linhas;
  Printf.printf "Número de palavras: %d\n" palavras;
  Printf.printf "Número de caracteres: %d\n" caracters;;

let () =
  let nome_arquivo = "arquivo.txt" in  (* Substitua pelo nome do seu arquivo *)
  contar nome_arquivo;;
