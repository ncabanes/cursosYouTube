// Juego de adivinar un número (del 1 al 1000, en 10 intentos)

using System;

class AdivinarNumero
{
    static void Main(string[] args)
    {
        int aleatorio;
        int introducido;
        int restantes;

        Console.WriteLine("Adivinar números");

        // Generar aleatorio
        Random generador = new Random();
        aleatorio = generador.Next(1, 1001);

        // restantes = 10
        restantes = 10;

        // Repetir
        do
        {
            //   Pedir numero al usuario
            Console.WriteLine("Intentos restantes: " + restantes);
            Console.Write("Dime un número: ");
            introducido = Convert.ToInt32(Console.ReadLine());

            //   Si numero > aleatorio, Escribir "Te has pasado"
            if (introducido > aleatorio)
            {
                Console.WriteLine("Te has pasado");
            }

            //   Si numero < aleatorio, Escribir "Te has quedado corto"
            if (introducido < aleatorio)
            {
                Console.WriteLine("Te has quedado corto");
            }

            //   restantes = restantes - 1
            restantes--;

            // Hasta que numero = aleatorio o restantes = 0
        }
        while ((introducido != aleatorio) && (restantes > 0));

        // Si numero = aleatorio, Escribir "Felicidades"
        if (introducido == aleatorio)
        {
            Console.WriteLine("Acertaste!");
        }
        // Si no, Escribir "Era " + aleatorio
        else 
        {
            Console.WriteLine("Era " + aleatorio);
        }
    }
}
