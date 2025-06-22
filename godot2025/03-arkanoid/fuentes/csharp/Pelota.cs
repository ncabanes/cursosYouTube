using Godot;
using System;

public partial class Pelota : RigidBody2D
{
    public override void _Ready()
    {
        ContactMonitor = true;
        MaxContactsReported = 4;
    }

    private void _OnBodyEntered(Node body)
    {
        GD.Print("Colision");
        if (body.IsInGroup("Ladrillo"))
        {
            body.QueueFree();
        }
    }
}
