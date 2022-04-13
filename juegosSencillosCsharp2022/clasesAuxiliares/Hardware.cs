using System;
using System.Threading;
using Tao.Sdl;

class Hardware
{
    // Atributos

    static IntPtr pantallaOculta;
    static int ancho, alto;

    // Operaciones

    /// Inicializa el modo grafico a un cierto ancho, alto y profundidad de color, p.ej. 640, 480, 24 bits
    public static void Inicializar(int an, int al, int colores)
    {
        //System.Console.Write("Inicializando...");
        ancho = an;
        alto = al;

        int flags = (Sdl.SDL_HWSURFACE | Sdl.SDL_DOUBLEBUF | Sdl.SDL_ANYFORMAT);
        Sdl.SDL_Init(Sdl.SDL_INIT_EVERYTHING);
        pantallaOculta = Sdl.SDL_SetVideoMode(
            ancho,
            alto,
            colores,
            flags);

        Sdl.SDL_Rect rect2 =
            new Sdl.SDL_Rect(0, 0, (short)ancho, (short)alto);
        Sdl.SDL_SetClipRect(pantallaOculta, ref rect2);

        SdlTtf.TTF_Init();
    }

    /// Dibuja una imagen en pantalla oculta, en ciertas coordenadas
    public static void BorrarPantallaOculta()
    {
        Sdl.SDL_Rect origin = new Sdl.SDL_Rect(0, 0, (short)ancho, (short)alto);
        Sdl.SDL_FillRect(pantallaOculta, ref origin, 0);
    }

    /// Dibuja una imagen en pantalla oculta, en ciertas coordenadas
    public static void DibujarImagenOculta(IntPtr imagen, int x, int y)
    {
        Sdl.SDL_Rect origen = new Sdl.SDL_Rect(0, 0, (short)ancho, (short)alto);
        Sdl.SDL_Rect dest = new Sdl.SDL_Rect((short)x, (short)y, (short)ancho, (short)alto);
        Sdl.SDL_BlitSurface(imagen, ref origen, pantallaOculta, ref dest);
    }

    /// Dibuja una imagen en pantalla oculta, en ciertas coordenadas
    public static void DibujarImagenOculta(Imagen imagen, int x, int y)
    {
        DibujarImagenOculta(imagen.GetPuntero(), x, y);
    }

    /// Visualiza la pantalla oculta
    public static void VisualizarOculta()
    {
        Sdl.SDL_Flip(pantallaOculta);
    }


    public static IntPtr CargarImagen(string fichero)
    {
        IntPtr imagen;
        imagen = SdlImage.IMG_Load(fichero);
        if (imagen == IntPtr.Zero)
        {
            System.Console.WriteLine("Imagen inexistente: {0}", fichero);
            Environment.Exit(4);
        }
        return imagen;
    }

    public static void EscribirTextoOculta(string texto,
        int x, int y, byte r, byte g, byte b, Fuente f)
    {
        EscribirTextoOculta(texto, x, y, r, g, b, f.LeerPuntero());
    }

    public static void EscribirTextoOculta(string texto,
        int x, int y, byte r, byte g, byte b, IntPtr fuente)
    {
        Sdl.SDL_Color color = new Sdl.SDL_Color(r, g, b);
        IntPtr textoComoImagen = SdlTtf.TTF_RenderText_Solid(
            fuente, texto, color);
        if (textoComoImagen == IntPtr.Zero)
            Environment.Exit(5);

        Sdl.SDL_Rect origen = new Sdl.SDL_Rect(0, 0, (short)ancho, (short)alto);
        Sdl.SDL_Rect dest = new Sdl.SDL_Rect((short)x, (short)y, (short)ancho, (short)alto);

        Sdl.SDL_BlitSurface(textoComoImagen, ref origen,
            pantallaOculta, ref dest);
        Sdl.SDL_FreeSurface(textoComoImagen);
    }

    public static IntPtr CargarFuente(string fichero, int tamanyo)
    {
        IntPtr fuente = SdlTtf.TTF_OpenFont(fichero, tamanyo);
        if (fuente == IntPtr.Zero)
        {
            System.Console.WriteLine("Fuente inexistente: {0}", fichero);
            Environment.Exit(6);
        }
        return fuente;
    }

    public static bool TeclaPulsada(int c)
    {
        bool pulsada = false;
        Sdl.SDL_PumpEvents();
        Sdl.SDL_Event suceso;
        Sdl.SDL_PollEvent(out suceso);
        int numkeys;
        byte[] teclas = Tao.Sdl.Sdl.SDL_GetKeyState(out numkeys);
        if (teclas[c] == 1)
            pulsada = true;
        return pulsada;
    }

    public static void Pausa(int milisegundos)
    {
        Thread.Sleep(milisegundos);
    }

    /// Devuelve la anchura de la pantalla, en pixeles
    public static int GetAncho()
    {
        return ancho;
    }

    /// Devuelve la altura de la pantalla, en pixeles
    public static int GetAlto()
    {
        return alto;
    }

    /// Abandona el programa, mostrando un cierto mensaje de error
    public static void ErrorFatal(string texto)
    {
        System.Console.WriteLine(texto);
        Environment.Exit(1);
    }


    // Definiciones de teclas
    public static int TECLA_ESC = Sdl.SDLK_ESCAPE;
    public static int TECLA_ESP = Sdl.SDLK_SPACE;
    public static int TECLA_A = Sdl.SDLK_a;
    public static int TECLA_B = Sdl.SDLK_b;
    public static int TECLA_C = Sdl.SDLK_c;
    public static int TECLA_D = Sdl.SDLK_d;
    public static int TECLA_E = Sdl.SDLK_e;
    public static int TECLA_F = Sdl.SDLK_f;
    public static int TECLA_G = Sdl.SDLK_g;
    public static int TECLA_H = Sdl.SDLK_h;
    public static int TECLA_I = Sdl.SDLK_i;
    public static int TECLA_J = Sdl.SDLK_j;
    public static int TECLA_K = Sdl.SDLK_k;
    public static int TECLA_L = Sdl.SDLK_l;
    public static int TECLA_M = Sdl.SDLK_m;
    public static int TECLA_N = Sdl.SDLK_n;
    public static int TECLA_O = Sdl.SDLK_o;
    public static int TECLA_P = Sdl.SDLK_p;
    public static int TECLA_Q = Sdl.SDLK_q;
    public static int TECLA_R = Sdl.SDLK_r;
    public static int TECLA_S = Sdl.SDLK_s;
    public static int TECLA_T = Sdl.SDLK_t;
    public static int TECLA_U = Sdl.SDLK_u;
    public static int TECLA_V = Sdl.SDLK_v;
    public static int TECLA_W = Sdl.SDLK_w;
    public static int TECLA_X = Sdl.SDLK_x;
    public static int TECLA_Y = Sdl.SDLK_y;
    public static int TECLA_Z = Sdl.SDLK_z;
    public static int TECLA_1 = Sdl.SDLK_1;
    public static int TECLA_2 = Sdl.SDLK_2;
    public static int TECLA_3 = Sdl.SDLK_3;
    public static int TECLA_4 = Sdl.SDLK_4;
    public static int TECLA_5 = Sdl.SDLK_5;
    public static int TECLA_6 = Sdl.SDLK_6;
    public static int TECLA_7 = Sdl.SDLK_7;
    public static int TECLA_8 = Sdl.SDLK_8;
    public static int TECLA_9 = Sdl.SDLK_9;
    public static int TECLA_0 = Sdl.SDLK_0;
    public static int TECLA_ARR = Sdl.SDLK_UP;
    public static int TECLA_ABA = Sdl.SDLK_DOWN;
    public static int TECLA_DER = Sdl.SDLK_RIGHT;
    public static int TECLA_IZQ = Sdl.SDLK_LEFT;
}
