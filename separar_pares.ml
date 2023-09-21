let rec imprimir lista_inteiros =
  match lista_inteiros with
  | [] -> ()
  | h::t -> Printf.printf " %d\n" h; imprimir t;;

let inverter lista =
let rec inverter_lista lista lista_invertida =
  match lista with
  | [] -> lista_invertida
  | h::t -> inverter_lista t (h::lista_invertida) in
  inverter_lista lista [];;
  
let separar_pares lista = 
    let rec separar_aux lista l1 l2 =
        match lista with
        | [] -> (l1, l2)
        | (a, b)::t -> separar_aux t (a::l1) (b::l2)
    in separar_aux lista [] [];;
(*
let lista_de_pares = [ (1, 2); (3, 4); (5, 6) ] in
let (lista1, lista2) = separar_pares lista_de_pares in 
imprimir lista1;
print_string "\n";
imprimir lista2;;*)

let lista1 = [1;2;3] in let listainvertida =  inverter lista1 in imprimir listainvertida;