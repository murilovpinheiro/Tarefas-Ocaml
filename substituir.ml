let rec substituir a b lista = 
  match lista with 
  | [] -> []
  | h::t -> if h = a then
              b::(substituir a b t)
            else
              h::(substituir a b t);;

let lista = ["A", "B", "C", "D", "Z"] in 
substituir "Z" "E" lista;;