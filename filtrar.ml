let rec imprimir lista_inteiros =
  match lista_inteiros with
  | [] -> ()
  | h::t -> Printf.printf "Número: %d\n" h; imprimir t;;

let rec filtrar lista_inteiros predicado=
  match lista_inteiros with
  | [] -> []
  | h::t -> if predicado h then h::(filtrar t predicado)
            else filtrar t predicado;;

(*(h mod 2) = 0*)

let func i = i mod 2 = 1;;


let pares = filtrar [1;2;3;4;5;6;8;9;12;16;22] (fun i -> i mod 2 = 0) in 
imprimir pares;;
(*Existe uma função chamada List.filter que filtra um lista de acordo com um predicado dado*)
let impares = List.filter (fun i -> i mod 2 = 1) [1;2;3;4;5;6;8;9;12;16;22] in 
imprimir impares;;