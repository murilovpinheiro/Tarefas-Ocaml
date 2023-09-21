let rec fold_l lista base op = 
  match lista with
  | [] -> base
  | h::t -> op h (fold_l t base op);;

let result = fold_l [1;2;3;4;5;6;7;8;9;10] 0 (fun a b -> b + 1) in 
Printf.printf "%d\n" result;;