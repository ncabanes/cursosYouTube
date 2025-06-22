using Godot;
using System;
using System.Collections.Generic;

public partial class Arkanoid : Node2D
{
    private List<string[]> niveles = new()
    {
        new string[]
        {
            "             ",
            "             ",
            "             ",
            "             ",
            "GGGGGGGGGGGGG",
            "5555555555555",
            "4444444444444",
            "3333333333333",
            "2222222222222",
            "1111111111111",
            "             ",
            "             ",
            "             ",
            "             ",
            "             ",
            "             ",
            "             ",
            "             "
        },
        new string[]
        {
            "             ",
            "             ",
            "6            ",
            "67           ",
            "678          ",
            "6781         ",
            "67815        ",
            "678153       ",
            "6781532      ",
            "67815324     ",
            "678153246    ",
            "6781532467   ",
            "67815324678  ",
            "678153246781 ",
            "GGGGGGGGGGGG5",
            "             ",
            "             ",
            "             "
        }
    };

    private int nivelActual = 0;
    private int ladrillosRestantes = 0;
    private int anchoLadrillo = 32;
    private int altoLadrillo = 16;
    private int margenHorizontal = 32;
    private int margenVertical = 56;

    private PackedScene ladrillo1;
    private PackedScene escenaPelota;
    private PackedScene escenaEnemigo;
    private Timer temporizadorEnemigo = new();

    public override void _Ready()
    {
        ladrillo1 = GD.Load<PackedScene>("res://ladrillo_1.tscn");
        escenaPelota = GD.Load<PackedScene>("res://pelota.tscn");
        escenaEnemigo = GD.Load<PackedScene>("res://enemigo.tscn");

        GenerarNivel();

        var pelota = (RigidBody2D)escenaPelota.Instantiate();
        pelota.Position = new Vector2(200, 300);
        pelota.LinearVelocity = new Vector2(100, -100);
        AddChild(pelota);

        temporizadorEnemigo.WaitTime = 5.0f;
        temporizadorEnemigo.OneShot = true;
        temporizadorEnemigo.Timeout += GenerarEnemigo;
        AddChild(temporizadorEnemigo);
        temporizadorEnemigo.Start();
    }

    private void GenerarNivel()
    {
        ladrillosRestantes = 0;

        for (int y = 0; y < niveles[nivelActual].Length; y++)
        {
            for (int x = 0; x < niveles[nivelActual][y].Length; x++)
            {
                char caracter = niveles[nivelActual][y][x];
                Vector2 posicion = new(x * anchoLadrillo + margenHorizontal, y * altoLadrillo + margenVertical);

                if (caracter == '1' || caracter == '2')
                {
                    var l = (Node2D)ladrillo1.Instantiate();
                    l.AddToGroup("Ladrillo");
                    l.Position = posicion;
                    AddChild(l);
                    ladrillosRestantes++;

                    if (caracter == '2')
                        l.GetNode<Sprite2D>("Sprite2D").Modulate = new Color(1, 0, 0);
                }
            }
        }
    }

    private void GenerarEnemigo()
    {
        var enemigo = (Node2D)escenaEnemigo.Instantiate();
        enemigo.Position = new Vector2((float)GD.RandRange(50, 400), (float)GD.RandRange(100, 200));
        AddChild(enemigo);
    }

    public override void _PhysicsProcess(double delta)
    {
        float entrada = Input.GetAxis("ui_left", "ui_right");
        GetNode<RigidBody2D>("Bate").LinearVelocity = new Vector2(400 * entrada, 0);
    }
}
