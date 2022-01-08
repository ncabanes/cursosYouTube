(* Principales funciones de manejo de cadenas:
   - Extraccion de subcadenas (copy)
   - Posicion de una subcadena (pos)
   - Insertar un fragmento (insert)
   - Borrar un fragmento (delete)
*)

program FuncionesDeCadenas;

var
    texto: string;

begin
    texto := 'Hola, esto es un ejemplo';
    writeLn( 'El texto original es ', texto );

    writeLn( 'Las primeras letras son ',
        copy(texto, 1, 4) );

    writeLn( 'La palabra "ejemplo" esta en la posicion ',
        pos('ejemplo',texto) );

    insert( ' amigo,', texto, 6);
    writeLn( 'Tras insertar queda ', texto );

    delete( texto, 14, 5);
    writeLn( 'Y tras borrar queda ', texto );
end.
