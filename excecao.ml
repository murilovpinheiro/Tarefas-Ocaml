exception ErroDeData of string;;
type data = Data of int * int * int;;

let data_of_string date =
  let dia = int_of_string (String.sub date 0 2) in
  let mes = int_of_string (String.sub date 3 2) in
  let ano = int_of_string (String.sub date 6 4) in
  if ano < 0 then raise (ErroDeData("Ano Inválido"));
  if dia < 1 || dia > 30 then raise (ErroDeData("Dia Inválido"));
  if mes < 1 || mes > 12 then raise (ErroDeData("Mês Inválido"));
  Data(dia, mes, ano);;

data_of_string "30/06/2004";;

(*let data_of_string data(dia, mes, ano) = 
  let data_em_lista = [] in 
  if ano < 1 then raise ErroDeData "Ano Inválido" else 
  if dia < 1 || dia > 30 then raise ErroDeData "Dia Inválido" else 
  if mes < 1 || mes > 12 then raise ErroDeData "Mês Inválido" else ...*)
  