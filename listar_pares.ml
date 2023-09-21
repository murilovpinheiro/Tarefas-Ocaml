(*Escreva uma função que receba uma lista de inteiros e imprima os pares*)

let rec imprimir_pares lista_inteiros =
  match lista_inteiros with
  | [] -> ()
  | h::t -> if (h mod 2) == 0 then Printf.printf "Número par: %d\n" h;
            imprimir_pares t;;
  
imprimir_pares [1;2;3;4;5;6;77; 98; 100; 52; 9]