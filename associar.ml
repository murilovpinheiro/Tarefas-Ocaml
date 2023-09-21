let rec associar (l1: 't list) (l2: 'u list): ('t * 'u) list = 
  match l1 with
  | [] -> []
  | h::t -> match l2 with
            | [] -> []
            | j :: k -> (h, j) :: (associar t k);;

let lista1 = [1;2;3;4;5] in
let lista2 = ["a"; "b"; "c"] in
associar lista1 lista2;;