let rec imprimir lista_inteiros =
  match lista_inteiros with
  | [] -> ()
  | h::t -> Printf.printf "Número: %d\n" h; imprimir t;;

let separar_lista lista predicado =
  let rec aux lista lsim lnao = 
    match lista with
    | [] -> (lsim, lnao)
    | h::t -> if predicado h then aux t (h::lsim) lnao
              else aux t lsim (h::lnao)
    in aux lista [] [];;

let (lsim, lnao) = separar_lista [1;2;3;4] (fun i -> i mod 2 = 0) in 
        imprimir lsim;
        imprimir lnao;
