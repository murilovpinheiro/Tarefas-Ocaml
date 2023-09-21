type dia_mes = {
  dia : int; mes : int;
}

type dias_mes_ou_erro = Dia_mes of dia_mes | Erro of string 

let printar value = 
  match value with 
  | Erro e -> print_string e
  | Dia_mes dm -> Printf.printf "Dia: %d; Mês: %d\n" dm.dia dm.mes;;

let ler_dia_mes () =
  print_endline "Digite o dia/mês: ";
  let linha = read_line () in
  let dia = int_of_string (String.sub linha 0 2) in
  if dia <= 0 ||  dia > 30
     then Erro "Dia Inválido."
  else
    begin
      let mes = int_of_string (String.sub linha 3 2) in
      if mes <= 0 ||  mes > 12 then Erro "Mês Inválido"
      else 
        begin
          let data = {dia; mes} in
          Dia_mes data
        end;
    end;;


printar (ler_dia_mes ());;

  