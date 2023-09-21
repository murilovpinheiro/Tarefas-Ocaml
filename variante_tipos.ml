type ('a, 'b) par_Ordenado = Par of 'a * 'b;;

let func (Par(i, f)) =
  let i_convertido = float_of_int i in
  if f = i_convertido then print_string "São iguais"
  else print_string "Não são iguais";;

(* De forma rápida, a desconstrução de uma tupla construída num variant do exemplo acima deve ser feito com:
   Par(i, f), dessa forma você é capaz de utilizar tudo legalzinho*)