using System;
using Tao.Sdl;

public class Sonido
{
    // Atributos
    IntPtr punteroInterno;

    // Operaciones

    // Constructor a partir de un nombre de fichero
    public Sonido(string nombreFichero)
    {
        punteroInterno = SdlMixer.Mix_LoadMUS(nombreFichero);
    }

    // Reproducir una vez
    public void Reproducir1()
    {
        SdlMixer.Mix_PlayMusic(punteroInterno, 1);
    }

    // Reproducir continuo (musica de fondo)
    public void ReproducirFondo()
    {
        SdlMixer.Mix_PlayMusic(punteroInterno, -1);
    }

    // Interrumpir toda la reproducción de sonido
    public void Interrumpir()
    {
        SdlMixer.Mix_HaltMusic();
    }

}
