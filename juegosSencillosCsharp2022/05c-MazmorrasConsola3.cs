using System;
using System.Threading;

struct SpriteTexto
{
    public int x;
    public int y;
    public int velocX;
    public int velocY;
    public char simbolo;
    public ConsoleColor color;
    public bool visible;
}

class MazmorrasConsola
{
    static bool terminado;

    static SpriteTexto personaje;
    static SpriteTexto[] enemigos;
    static SpriteTexto[] items;

    static int numEnemigos, numItems;
    static int itemsRestantes;

    static int puntos;
    static Random generador;

    static void Main()
    {
        InicializarJuego();

        while (!terminado)
        {
            DibujarPantalla();
            ComprobarEntradaUsuario();
            AnimarElementos();
            ComprobarEstadoDelJuego();
            PausaHastaFinDeFotograma();
        }
    }

    private static void InicializarJuego()
    {
        terminado = false;
        generador = new Random();

        personaje.x = 40; personaje.y = 12;
        personaje.color = ConsoleColor.Yellow;
        personaje.simbolo = 'A';

        numEnemigos = 3;
        enemigos = new SpriteTexto[numEnemigos];
        for (int i = 0; i < numEnemigos; i++)
        {
            enemigos[i].x = generador.Next(10, 50);
            enemigos[i].y = i * 5 + 3;
            enemigos[i].color = ConsoleColor.Red;
            enemigos[i].simbolo = 'X';
            enemigos[i].velocX = 1;
        }

        numItems = 20;
        itemsRestantes = numItems;
        items = new SpriteTexto[numItems];
        for (int i = 0; i < numItems; i++)
        {
            items[i].x = generador.Next(5, 55);
            items[i].y = generador.Next(2, 20);
            items[i].color = ConsoleColor.Cyan;
            items[i].simbolo = 'O';
            items[i].visible = true;
        }

        puntos = 0;
        
    }

    private static void DibujarPantalla()
    {
        Console.Clear();
        
        Console.ForegroundColor = personaje.color;
        Console.SetCursorPosition(personaje.x, personaje.y);
        Console.Write(personaje.simbolo);

        for (int i = 0; i < numEnemigos; i++)
        {
            Console.ForegroundColor = enemigos[i].color;
            Console.SetCursorPosition(enemigos[i].x, enemigos[i].y);
            Console.Write("X");
        }

        for (int i = 0; i < numItems; i++)
        {
            if (items[i].visible)
            {
                Console.ForegroundColor = items[i].color;
                Console.SetCursorPosition(items[i].x, items[i].y);
                Console.Write("O");
            }
        }

        Console.SetCursorPosition(1, 1);
        Console.Write("Puntos: " + puntos);
    }

    private static void ComprobarEntradaUsuario()
    {
        if (Console.KeyAvailable)
        {
            ConsoleKeyInfo tecla = Console.ReadKey(true);
            if (tecla.Key == ConsoleKey.LeftArrow) personaje.x--;
            if (tecla.Key == ConsoleKey.RightArrow) personaje.x++;
            if (tecla.Key == ConsoleKey.UpArrow) personaje.y--;
            if (tecla.Key == ConsoleKey.DownArrow) personaje.y++;
        }
    }

    private static void AnimarElementos()
    {
        for (int i = 0; i < numEnemigos; i++)
        {
            enemigos[i].x += enemigos[i].velocX;
            if ((enemigos[i].x > 60) || (enemigos[i].x < 10))
                enemigos[i].velocX = -enemigos[i].velocX;
        }
    }

    private static void ComprobarEstadoDelJuego()
    {
        for (int i = 0; i < numEnemigos; i++)
        {
            if ((personaje.x == enemigos[i].x) 
                    && (personaje.y == enemigos[i].y))
                terminado = true;
        }

        for (int i = 0; i < numItems; i++)
        {
            if ((personaje.x == items[i].x) 
                && (personaje.y == items[i].y)
                && items[i].visible)
            {
                puntos += 10;
                items[i].visible = false;
                itemsRestantes--;
                if (itemsRestantes <= 0)
                    terminado = true;
            }
        }
    }

    private static void PausaHastaFinDeFotograma()
    {
        Thread.Sleep(100);
    }
}

