using System;
using System.Threading;

class MazmorrasConsola
{
    static bool terminado;
    static int x, y;
    static int xEnemigo, yEnemigo;
    static int velocEnemigo;
    static int xItem, yItem;
    static int puntos;
    static Random generador;

    static void Main()
    {
        terminado = false;
        x = 40; y = 12;
        xEnemigo = 30; yEnemigo = 8; velocEnemigo = 1;
        xItem = 50; yItem = 14;
        puntos = 0;
        generador = new Random();

        while (!terminado)
        {
            DibujarPantalla();
            ComprobarEntradaUsuario();
            AnimarElementos();
            ComprobarEstadoDelJuego();
            PausaHastaFinDeFotograma();
        }
    }

    private static void DibujarPantalla()
    {
        Console.Clear();
        
        Console.ForegroundColor = ConsoleColor.Yellow;
        Console.SetCursorPosition(x, y);
        Console.Write("A");

        Console.ForegroundColor = ConsoleColor.Red;
        Console.SetCursorPosition(xEnemigo, yEnemigo);
        Console.Write("X");

        Console.ForegroundColor = ConsoleColor.Cyan;
        Console.SetCursorPosition(xItem, yItem);
        Console.Write("O");

        Console.SetCursorPosition(1, 1);
        Console.Write("Puntos: " + puntos);
    }

    private static void ComprobarEntradaUsuario()
    {
        if (Console.KeyAvailable)
        {
            ConsoleKeyInfo tecla = Console.ReadKey(true);
            if (tecla.Key == ConsoleKey.LeftArrow) x--;
            if (tecla.Key == ConsoleKey.RightArrow) x++;
            if (tecla.Key == ConsoleKey.UpArrow) y--;
            if (tecla.Key == ConsoleKey.DownArrow) y++;
        }
    }

    private static void AnimarElementos()
    {
        xEnemigo += velocEnemigo;
        if ((xEnemigo > 60) || (xEnemigo < 10))
            velocEnemigo = -velocEnemigo;
    }

    private static void ComprobarEstadoDelJuego()
    {
        if ((x == xEnemigo) && (y == yEnemigo))
            terminado = true;

        if ((x == xItem) && (y == yItem))
        {
            puntos += 10;
            xItem = generador.Next(5, 50);
            yItem = generador.Next(2, 15);
        }
    }

    private static void PausaHastaFinDeFotograma()
    {
        Thread.Sleep(100);
    }
}

