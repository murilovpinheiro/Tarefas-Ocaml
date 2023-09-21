let imprimir_lista lista =
  List.iter (fun elemento -> Printf.printf "%d " elemento) lista;
  Printf.printf "\n";;

let rec ordenar lista =
  let rec inserir elemento l =
    match l with
    | [] -> [elemento]
    | hd :: tl as l ->
      if elemento < hd then
        elemento :: l
      else
        hd :: inserir elemento tl
  in
  match lista with 
  | [] -> []
  | hd :: tl -> inserir hd (ordenar tl);;

let minha_lista = [3; 1; 4; 1; 5; 9; 2; 6; 5; 3; 5; 1] in
let lista_ordenada = ordenar minha_lista in 
imprimir_lista lista_ordenada;;