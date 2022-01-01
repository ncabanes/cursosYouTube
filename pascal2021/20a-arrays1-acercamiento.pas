(* Acercamiento a los "arrays": necesidad *)

program acercamientoAArrays;

var
  dato1, dato2, dato3, dato4, dato5: integer;

begin
  write('Dime el dato 1 ');
  readln(dato1);
  write('Dime el dato 2 ');
  readln(dato2);
  write('Dime el dato 3 ');
  readln(dato3);
  write('Dime el dato 4 ');
  readln(dato4);
  write('Dime el dato 5 ');
  readln(dato5);

  write('Los datos al reves son: ');
  write(dato5, ' ', dato4, ' ', dato3, ' ', dato2, ' ', dato1);
end.

