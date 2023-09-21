type date = {day: int; month: int; year: int}

let rec ler_armazena_data datas = 
  print_string "Digite a data: ";
  let data_nova = read_line () in
  if data_nova = "" then
    datas
  else 
    let day   = int_of_string (String.sub data_nova 0 2) in
    let month = int_of_string (String.sub data_nova 3 2) in
    let year  = int_of_string (String.sub data_nova 6 4) in 
    ler_armazena_data ({day; month; year;}::datas);;

let lista_ordenada = List.sort (fun d1 d2 -> if d1.year <> d2.year then compare d1.year d2.year
                                             else if d1.month <> d2.month then compare d1.month d2.month
                                             else compare d1.day d2.day) (ler_armazena_data []);;

let format_date date =
  Printf.sprintf "%02d/%02d/%04d" date.day date.month date.year;;

let print_sorted_list sorted_list =
  List.iter (fun date -> Printf.printf "%s\n" (format_date date)) sorted_list;;

print_sorted_list lista_ordenada;;
