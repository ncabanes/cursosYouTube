using Godot;
using System;

public partial class Pelota : Area2D
{
    private double incrX = 75;
    private double incrY = 75;
    private Node2D juego;

    public override void _Ready()
    {
        juego = (Node2D)GetParent();
    }

    public override void _Process(double delta)
    {
        Position += new Vector2((float) (incrX * delta), (float) (incrY * delta));
    }

    private void _on_area_entered(Area2D otro)
    {
        // GD.Print("Colisión");

        if (otro.Name == "MargenSuperior" || otro.Name == "MargenInferior")
        {
            incrY = -incrY;
        }

        if (otro.Name == "RaquetaIzquierda" || otro.Name == "RaquetaDerecha")
        {
            incrX = -incrX;

            int alturaMediaRaqueta = 16;
            float posicionRelativa = (Position.Y - otro.Position.Y) / alturaMediaRaqueta;

            if (posicionRelativa < -0.5f)
            {
                incrY = -Math.Abs(incrX * 1.3f);
            }
            else if (posicionRelativa < 0)
            {
                incrY = -Math.Abs(incrX * 0.6f);
            }
            else if (posicionRelativa < 0.5f)
            {
                incrY = Math.Abs(incrX * 0.6f);
            }
            else
            {
                incrY = Math.Abs(incrX * 1.3f);
            }
        }

        if (otro.Name == "PuntoIzquierda")
        {
            juego.Call("AnotarPuntosEnIzquierda");
        }

        if (otro.Name == "PuntoDerecha")
        {
            juego.Call("AnotarPuntosEnDerecha");
        }
    }

    public void IndicarVelocidad(int vx, int vy)
    {
        incrX = vx;
        incrY = vy;
    }
}

