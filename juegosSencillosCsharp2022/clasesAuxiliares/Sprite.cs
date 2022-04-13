using System;

class Sprite
{
    // ----- Atributos -----
    protected int x;
    protected int y;
    protected int velocX;
    protected int velocY;
    protected int alto;
    protected int ancho;
    protected bool activo;

    protected int xOriginal;  // Para llevar a su posicion inicial
    protected int yOriginal;

    // La imagen que se mostrarß en pantalla, si es estatica
    protected Imagen miImagen;

    // La secuencia de imagenes, si es animada
    protected Imagen[][] secuencia;
    protected byte fotogramaActual;
    protected byte direccion;
    public const byte ABAJO = 0;
    public const byte ARRIBA = 1;
    public const byte DERECHA = 2;
    public const byte IZQUIERDA = 3;

    bool contieneImagen;        // Si no contiene imagen, no se podra dibujar
    bool contieneSecuencia;     // La alternativa: imagenes multiples

    // ----- Operaciones -----

    /// Constructor: Carga la imagen que representara a este elemento grafico
    public Sprite(string nombre)
    {
        CargarImagen(nombre);
        direccion = ABAJO;
        activo = true;
        fotogramaActual = 0;
        contieneImagen = true;
        contieneSecuencia = false;
        secuencia = new Imagen[12][];
        activo = true;
        // Valores por defecto para ancho y alto
        ancho = 32;
        alto = 32;
    }

    /// Mueve el elemento grafico a otra posicion
    public void MoverA(int nuevaX, int nuevaY)
    {
        x = nuevaX;
        y = nuevaY;
        if ((xOriginal == 0) && (yOriginal == 0))
        {
            xOriginal = nuevaX;
            yOriginal = nuevaY;
        }
    }

    /// Cambia la velocidad (incrX e incrY) de un elemento
    public void SetVelocidad(int vX, int vY)
    {
        velocX = vX;
        velocY = vY;
    }


    /// Carga la imagen que representara a este elemento grafico
    public void CargarImagen(string nombre)
    {
        miImagen = new Imagen();
        miImagen.Cargar(nombre);
        contieneImagen = true;
        contieneSecuencia = false;
    }


    /// Carga una secuencia de imagenes para un elemento animado
    public void CargarSecuencia(byte direcc, string[] nombres)
    {
        contieneImagen = true;
        contieneSecuencia = true;
        byte tamanyo = (byte)nombres.Length;
        secuencia[direcc] = new Imagen[tamanyo];
        for (byte i = 0; i < nombres.Length; i++)
        {
            secuencia[direcc][i] = new Imagen(nombres[i]);
        }
        // Valores por defecto para ancho y alto
        ancho = 32;
        alto = 32;
    }

    /// Mueve el elemento grafico a otra posicion
    public void CambiarDireccion(byte nuevaDir)
    {
        if (direccion != nuevaDir)
        {
            direccion = nuevaDir;
            fotogramaActual = 0;
        }
    }

    /// Devuelve el personaje a su posici¾n inicial
    public void Reiniciar()
    {
        x = xOriginal;
        y = yOriginal;
    }


    /// Dibuja el elemento grafico en su posicion actual
    public void Dibujar()
    {
        if (activo == false) return;
        if (contieneSecuencia)
            secuencia[direccion][fotogramaActual].Dibujar(x, y);
        else if (contieneImagen)
            miImagen.Dibujar(x, y);
        else
            Hardware.ErrorFatal("Se ha intentado dibujar una imagen no cargada!");
    }

    /// Dibuja el elemento grafico en una posicion cualquiera
    public void Dibujar(int nuevaX, int nuevaY)
    {
        MoverA(nuevaX, nuevaY);
        Dibujar();
    }

    /// Comprueba si ha chocado con otro elemento grßfico
    public bool ColisionaCon(Sprite otroElem)
    {
        // No se debe chocar con un elemento oculto      
        if ((activo == false) || (otroElem.activo == false))
            return false;
        // Ahora ya compruebo coordenadas
        if ((otroElem.x + otroElem.ancho > x)
            && (otroElem.y + otroElem.alto > y)
            && (x + ancho > otroElem.x)
            && (y + alto > otroElem.y))
            return true;
        else
            return false;
    }

    /// Prepara el siguiente fotograma, para animar el movimiento de
    /// un personaje
    public void SiguienteFotograma()
    {
        if (fotogramaActual < secuencia[direccion].Length - 1)
            fotogramaActual++;
        else
            fotogramaActual = 0;
    }

    public void Mover()
    {
        // Para ser redefinido en las clases "hijas"
    }

    /// Devuelve el valor de x
    public int GetX()
    {
        return x;
    }

    /// Devuelve el valor de y
    public int GetY()
    {
        return y;
    }

    /// Cambia el ancho y el alto
    public void SetAnchoAlto(int an, int al)
    {
        alto = al;
        ancho = an;
    }

    /// Devuelve si estß activo
    public bool GetActivo()
    {
        return activo;
    }

    /// Cambia si estß activo (visible) o no (muerto / no visible)
    public void SetActivo(bool a)
    {
        activo = a;
    }
}
