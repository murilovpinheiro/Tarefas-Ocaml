let imprimir_lista lista =
  List.iter (fun elemento -> Printf.printf "%d " elemento) lista;
  Printf.printf "\n";;

let rec bubble lista1 = 
  let rec step lista2 = 
    match lista2 with
    |[] -> []
    |h::[] -> h::[]
    |a::b::t -> if b < a then b::( step (a::t) ) else a::(step (b::t)) in
  let rec if_ordenado l =
    match l with
    |[] -> true
    |h::[] -> true
    |a::b::t -> if b < a then false else if_ordenado (b::t) in
  if if_ordenado lista1 then lista1 else bubble (step lista1);;

let minha_lista = [3; 1; 4; 1; 5; 9; 2; 6; 5; 3; 5; 1] in
let lista_ordenada = bubble minha_lista in 
imprimir_lista lista_ordenada;;