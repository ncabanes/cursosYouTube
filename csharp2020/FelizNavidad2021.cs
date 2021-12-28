using System;
class FelizNavidad
{
    static void Main()
    {
        string mensaje = "Feliz Navidad y próspero 2022 ";
        int posInicial = mensaje.Length / 2 - 1;
        int cantidadLetras = 1;

        Console.Clear();

        Console.ForegroundColor = ConsoleColor.Green;
        // Copa del árbol
        while (posInicial >= 0)
        {
            Console.Write(new string(' ', posInicial));
            Console.WriteLine(
                mensaje.Substring(posInicial, cantidadLetras));
            posInicial--;
            cantidadLetras += 2;
        }

        Console.ForegroundColor = ConsoleColor.DarkRed;
        // Tronco
        string sectorTronco = ":-)";
        int espacios = mensaje.Length / 2 - 2;
        for (int i = 0; i < 3; i++)
        {
            Console.Write(new string(' ', espacios));
            Console.WriteLine(sectorTronco);
        }

        // Mensaje
        Console.ForegroundColor = ConsoleColor.Yellow;
        Console.SetCursorPosition(40, 10);
        Console.WriteLine("Feliz Navidad");
        Console.SetCursorPosition(39, 12);
        Console.WriteLine("y próspero 2022");

        Console.ReadKey();
    }
}
