using Godot;
using System;

public partial class Pong : Node2D
{
    private Area2D raquetaIzquierda;
    private Area2D raquetaDerecha;
    private Pelota pelota;

    private int puntosJugadorIzquierda = 0;
    private int puntosJugadorDerecha = 0;

    private bool enPartida = false;

    private CompressedTexture2D[] cifras;

    public override void _Ready()
    {
        cifras = new CompressedTexture2D[] {
            (CompressedTexture2D) GD.Load("res://imagenes/0.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/1.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/2.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/3.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/4.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/5.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/6.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/7.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/8.png"),
            (CompressedTexture2D) GD.Load("res://imagenes/9.png")
        };
        raquetaIzquierda = GetNode<Area2D>("RaquetaIzquierda");
        raquetaDerecha = GetNode<Area2D>("RaquetaDerecha");
        pelota = GetNode<Pelota>("Pelota");
        TerminarPartida();
    }

    public override void _Process(double delta)
    {
        if (Input.IsActionPressed("arriba1") && raquetaIzquierda.Position.Y > 30)
            raquetaIzquierda.Position -= new Vector2(0, 100 * (float) delta);

        if (Input.IsActionPressed("abajo1") && raquetaIzquierda.Position.Y < 210)
            raquetaIzquierda.Position += new Vector2(0, 100 * (float) delta);

        if (Input.IsActionPressed("arriba2") && raquetaDerecha.Position.Y > 30)
            raquetaDerecha.Position -= new Vector2(0, 100 * (float) delta);

        if (Input.IsActionPressed("abajo2") && raquetaDerecha.Position.Y < 210)
            raquetaDerecha.Position += new Vector2(0, 100 * (float) delta);

        if (!enPartida && Input.IsActionJustPressed("comenzar"))
            ComenzarPartida();
    }

    public void AnotarPuntosEnIzquierda()
    {
        puntosJugadorDerecha++;
        pelota.Position = new Vector2(85, 125);
        pelota.IndicarVelocidad(100 + 4 * (puntosJugadorDerecha + puntosJugadorIzquierda), 
                               -100 - 4 * (puntosJugadorDerecha + puntosJugadorIzquierda));
        ActualizarMarcador();
    }

    public void AnotarPuntosEnDerecha()
    {
        puntosJugadorIzquierda++;
        pelota.Position = new Vector2(372 - 85, 125);
        pelota.IndicarVelocidad(-100 - 4 * (puntosJugadorDerecha + puntosJugadorIzquierda), 
                               -100 - 4 * (puntosJugadorDerecha + puntosJugadorIzquierda));
        ActualizarMarcador();
    }

    private void ActualizarMarcador()
    {
        GetNode<TextureRect>("cifraIzquierda1").Texture = cifras[puntosJugadorIzquierda / 10];
        GetNode<TextureRect>("cifraIzquierda2").Texture = cifras[puntosJugadorIzquierda % 10];
        GetNode<TextureRect>("cifraDerecha1").Texture = cifras[puntosJugadorDerecha / 10];
        GetNode<TextureRect>("cifraDerecha2").Texture = cifras[puntosJugadorDerecha % 10];

        if (puntosJugadorDerecha >= 11 || puntosJugadorIzquierda >= 11)
            TerminarPartida();
    }

    public void ComenzarPartida()
    {
        GetNode<Label>("TextoComenzar").Visible = false;
        pelota.Position = new Vector2(85, 125);
        pelota.IndicarVelocidad(100, 100);
        puntosJugadorDerecha = 0;
        puntosJugadorIzquierda = 0;
        ActualizarMarcador();
        enPartida = true;
    }

    public void TerminarPartida()
    {
        GetNode<Label>("TextoComenzar").Visible = true;
        pelota.IndicarVelocidad(0, 0);
        enPartida = false;
    }
}

