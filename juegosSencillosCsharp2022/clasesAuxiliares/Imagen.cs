using System;

class Imagen
{
    // Atributos
    private IntPtr punteroInterno;

    // Operaciones    
    public Imagen()  // Constructor
    {
        punteroInterno = IntPtr.Zero;  // En principio, no hay imagen
    }

    public Imagen(string nombreFichero)  // Constructor
    {
        Cargar(nombreFichero);
    }

    /// Carga una imagen a partir de un nombre de fichero
    public void Cargar(string nombreFichero)
    {
        punteroInterno = Hardware.CargarImagen(nombreFichero);
        if (punteroInterno == IntPtr.Zero)
            Hardware.ErrorFatal("Imagen inexistente: " + nombreFichero);
    }

    /// Dibuja una imagen en unas coordenadas (se apoya en Hardware)
    public void Dibujar(int x, int y)
    {
        Hardware.DibujarImagenOculta(punteroInterno, x, y);
    }

    /// Devuelve el puntero de SDL (no deberia ser necesario usarla nunca)
    public IntPtr GetPuntero()
    {
        return punteroInterno;
    }
}
