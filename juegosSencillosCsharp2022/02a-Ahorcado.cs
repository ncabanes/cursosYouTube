// Juego del ahorcado en modo texto (versión 1)

using System;

class Ahorcado
{
    static void Main()
    {
        // El ordenador escoge una palabra al azar (de entre un conjunto prefijado)
        string[] palabras = { "memento", "krull", "spiderman",
            "star wars", "hulk", "batman" };
        Random generador = new Random();
        int numeroAzar = generador.Next(0, palabras.Length);
        string palabraAdivinar = palabras[numeroAzar];

        // Preparamos una palabra a mostrar (serie de guiones: ---- ----) desde ella
        string palabraMostrar = "";
        for (int i = 0; i < palabraAdivinar.Length; i++)
            if (palabraAdivinar[i] == ' ')
                palabraMostrar += " ";
            else
                palabraMostrar += "-";

        // Resto de variables
        int fallosRestantes = 8;
        char letraActual;
        bool terminado = false;

        // Parte repetitiva:
        do
        {
            // Mostramos la palabra oculta (y los fallos restantes)
            Console.WriteLine("Palabra oculta:  " + palabraMostrar);
            Console.WriteLine("Fallos restantes: " + fallosRestantes);

            // El usuario elige una letra
            Console.Write("Introduzca una letra: ");
            letraActual = Convert.ToChar(Console.ReadLine());

            // Si la letra no es parte de la palabra, el jugador 
            // pierde un intento (de los ocho iniciales)
            if (! palabraAdivinar.Contains(letraActual))
                fallosRestantes--;

            // Si la letra es parte de la palabra, el jugador no 
            // pierde ningún intento, y la letra se muestra como
            // parte de la palabra oculta: --a- -a--
            string siguienteMostrar = "";

            for (int i = 0; i < palabraAdivinar.Length; i++)
            {
                if (letraActual == palabraAdivinar[i])
                    siguienteMostrar += letraActual;
                else
                    siguienteMostrar += palabraMostrar[i];
            }
            palabraMostrar = siguienteMostrar;

            // Comprobamos si ha terminado: si el usuario se queda sin intentos
            // o si adivina toda la palabra.
            if ( ! palabraMostrar.Contains("-"))
            {
                Console.WriteLine("Felicidades, acertaste!  ({0})",
                    palabraAdivinar);
                terminado = true;
            }
            else if (fallosRestantes == 0)
            {
                Console.WriteLine("Lo siento. Era " + palabraAdivinar);
                terminado = true;
            }

            Console.WriteLine();

        }
        while (!terminado);
    }
}
