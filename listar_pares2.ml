let rec imprimir lista_inteiros =
  match lista_inteiros with
  | [] -> ()
  | h::t -> Printf.printf "Número: %d\n" h; imprimir t;;

let rec listar_pares lista_inteiros =
  match lista_inteiros with
  | [] -> []
  | h::t -> if (h mod 2) = 0 then h::(listar_pares t)
            else listar_pares t;;

let pares = listar_pares [1;2;3;4;5;6;8;9;12;16;22] in imprimir pares;;