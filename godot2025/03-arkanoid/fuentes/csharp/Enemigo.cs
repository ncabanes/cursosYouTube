using Godot;
using System;

public partial class Enemigo : Area2D
{
    private int velocidadX = 10;
    private int velocidadY = 1;

    public override void _Process(double delta)
    {
        Position += new Vector2((float)(velocidadX * delta), (float)(velocidadY * delta));

        if (GD.Randi() % 1000 > 990)
            velocidadX = -velocidadX;

        if (GD.Randi() % 1000 > 990)
            velocidadY = -velocidadY;

        if (Position.X > 400)
            Position = new Vector2(400, Position.Y);
        else if (Position.X < 50)
            Position = new Vector2(50, Position.Y);

        Position = new Vector2(Position.X, Mathf.Clamp(Position.Y, 50, 100));
    }
}
