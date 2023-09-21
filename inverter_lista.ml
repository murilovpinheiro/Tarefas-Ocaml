let inverter_lista lista = 
  let rec aux l lista_invertida = 
    match l with 
    | [] -> lista_invertida
    | h::t -> aux t (h::lista_invertida) in
  aux lista [];;