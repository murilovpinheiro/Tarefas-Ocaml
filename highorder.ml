let rec imprimir lista =
  match lista with
  | [] -> ()
  | h::t -> Printf.printf "Número: %d\n" h; imprimir t;;

let rec iterar funcao lista = 
  match lista with
  | [] -> []
  | h::t -> let new_h = funcao h in 
            new_h::(iterar funcao t);;

let result = iterar (fun i -> i + 1) [0; 1; 2; 3; 4;] in imprimir result;;