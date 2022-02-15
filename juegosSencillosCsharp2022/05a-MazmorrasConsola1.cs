using System;

class MazmorrasConsola
{
    static bool terminado;
    static int x, y;
    static int xEnemigo, yEnemigo;
    static int xItem, yItem;

    static void Main()
    {
        terminado = false;
        x = 40; y = 12;
        xEnemigo = 30; yEnemigo = 8;
        xItem = 50; yItem = 14;

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

        Console.SetCursorPosition(1, 20);
    }

    private static void ComprobarEntradaUsuario()
    {
        ConsoleKeyInfo tecla = Console.ReadKey(true);
        if (tecla.Key == ConsoleKey.LeftArrow) x--;
        if (tecla.Key == ConsoleKey.RightArrow) x++;
        if (tecla.Key == ConsoleKey.UpArrow) y--;
        if (tecla.Key == ConsoleKey.DownArrow) y++;
    }

    private static void AnimarElementos()
    {
        // Nada todavía
    }

    private static void ComprobarEstadoDelJuego()
    {
        if ((x == xEnemigo) && (y == yEnemigo))
            terminado = true;
    }

    private static void PausaHastaFinDeFotograma()
    {
        // Nada todavía
    }
}

