using System;

class TresEnRaya2
{
    static int[,] tablero;
    static char[] simbolos = { '.', 'O', 'X' };
    static int jugadorActual = 1;
    static bool terminado;

    static void Main()
    {
        terminado = false;
        tablero = new int[3, 3];

        while (!terminado)
        {
            DibujarPantalla();
            ComprobarEntradaUsuario();
            AnimarElementos();
            ComprobarEstadoDelJuego();
            PausaHastaFinDeFotogama();
        }
    }


    private static void DibujarPantalla()
    {
        Console.Clear();
        DibujarRecuadro();
        for (int fila = 0; fila < 3; fila++)
            for (int columna = 0; columna < 3; columna++)
                DibujarSimbolo(fila, columna);
    }

    private static void DibujarSimbolo(int fila, int columna)
    {
        int jugador = tablero[fila, columna];
        int filaPantalla = fila * 6 + 2;
        int columnaPantalla = columna * 6 + 11;
        if (jugador == 1)
        {
            Console.ForegroundColor = ConsoleColor.Green;
            Console.SetCursorPosition(columnaPantalla, filaPantalla);
            Console.Write(" ooo ");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 1);
            Console.Write("o   o");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 2);
            Console.Write("o   o");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 3);
            Console.Write("o   o");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 4);
            Console.Write(" ooo ");
        }
        else if (jugador == 2)
        {
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.SetCursorPosition(columnaPantalla, filaPantalla);
            Console.Write("*   *");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 1);
            Console.Write(" * * ");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 2);
            Console.Write("  *  ");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 3);
            Console.Write(" * * ");
            Console.SetCursorPosition(columnaPantalla, filaPantalla + 4);
            Console.Write("*   *");
        }
    }

    private static void DibujarRecuadro()
    {
        Console.ForegroundColor = ConsoleColor.Yellow;

        // Lineas horizontales
        for (int i = 0; i < 2; i++)
        {
            Console.SetCursorPosition(11, i * 6 + 7);
            Console.WriteLine( new string('-', 18));
        }

        // Lineas verticales
        for (int columna = 0; columna < 2; columna++)
        {
            for (int fila = 0; fila < 18; fila++)
            {
                Console.SetCursorPosition(columna * 6 + 16, fila+2);
                Console.Write('|');
            }
        }
    }

    private static void ComprobarEntradaUsuario()
    {
        int fila = 0, columna = 0;
        bool casillaValida = false;
        do
        {
            DibujarPantalla();
            Console.ForegroundColor = ConsoleColor.White;
            Console.SetCursorPosition(10, fila * 6 + 4);
            Console.Write(">");
            Console.SetCursorPosition(columna * 6 + 13, 0);
            Console.Write("v");

            ConsoleKeyInfo tecla = Console.ReadKey();
            
            if (tecla.Key == ConsoleKey.LeftArrow)
            {
                columna--;
                if (columna < 0) columna = 2;
            }

            if (tecla.Key == ConsoleKey.RightArrow)
            {
                columna++;
                if (columna > 2) columna = 0;
            }

            if (tecla.Key == ConsoleKey.UpArrow)
            {
                fila--;
                if (fila < 0) fila = 2;
            }

            if (tecla.Key == ConsoleKey.DownArrow)
            {
                fila++;
                if (fila > 2) fila = 0;
            }

            if ((tecla.Key == ConsoleKey.Spacebar)
                && (tablero[fila, columna] == 0))
            {
                casillaValida = true;
            }
        }
        while (!casillaValida);

        tablero[fila, columna] = jugadorActual;
    }

    private static void AnimarElementos()
    {
        // Nada por ahora
    }

    private static void ComprobarEstadoDelJuego()
    {
        bool partidaGanada = false;

        // Comprobar si el jugador actual ha ganado
        for (int fila = 0; fila < 3; fila++)
        {
            if ((tablero[fila, 0] == tablero[fila, 1])
                    && (tablero[fila, 0] == tablero[fila, 2])
                    && (tablero[fila, 0] == jugadorActual))
                partidaGanada = true;
        }

        for (int columna = 0; columna < 3; columna++)
        {
            if ((tablero[0, columna] == tablero[1, columna])
                    && (tablero[0, columna] == tablero[2, columna])
                    && (tablero[0, columna] == jugadorActual))
                partidaGanada = true;
        }

        if ((tablero[0, 0] == tablero[1, 1])
                && (tablero[0, 0] == tablero[2, 2])
                && (tablero[0, 0] == jugadorActual))
            partidaGanada = true;

        if ((tablero[0, 2] == tablero[1, 1])
                && (tablero[0, 2] == tablero[2, 0])
                && (tablero[0, 2] == jugadorActual))
            partidaGanada = true;

        if (partidaGanada)
        {
            DibujarPantalla();
            Console.SetCursorPosition(1, 20);
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine("Felicidades!");
            terminado = true;
        }

        // Comprobar si empate
        if (!partidaGanada)
        {
            int cantidadDeCeros = 0;
            for (int fila = 0; fila < 3; fila++)
            {
                for (int columna = 0; columna < 3; columna++)
                {
                    if (tablero[fila, columna] == 0)
                        cantidadDeCeros++;
                }
            }
            if (cantidadDeCeros == 0)
            {
                DibujarPantalla();
                Console.SetCursorPosition(1, 20);
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("Empate");
                terminado = true;
            }
        }

        // Cambio de turno
        if (jugadorActual == 1)
            jugadorActual = 2;
        else
            jugadorActual = 1;
    }

    private static void PausaHastaFinDeFotogama()
    {
        // Nada por ahora
    }
}
