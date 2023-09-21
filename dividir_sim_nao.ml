let rec dividir_sim_nao lista pred lsim lnao =
  match lista with
  | [] -> (lsim, lnao)
  | h :: t ->
             if pred h then
                dividir_sim_nao t pred (h::lsim) lnao
             else 
                dividir_sim_nao t pred lsim (h::lnao);;

let (x, y) = dividir_sim_nao [1;2;3;4;5] (fun x -> x mod 3 = 0) [] [];;
