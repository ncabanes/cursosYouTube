using Godot;
using System.Collections.Generic;

public partial class Snake : Node2D
{
    private Vector2 velocidad;
    private List<string[]> niveles = new List<string[]>
    {
        new string[]
        {
            "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
            "X                      X     X",
            "X     X                X     X",
            "X   XXX    F     X     X     X",
            "X                X           X",
            "X                X    F      X",
            "X       X        X           X",
            "X   F   X            XXX     X",
            "X       X                    X",
            "X     X                X     X",
            "X   XXX    F     X     X     X",
            "X                X           X",
            "X                X    F      X",
            "X       X        X           X",
            "X   F   X            XXX     X",
            "X       X                    X",
            "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
        },
        new string[]
        {
            "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
            "X   F                  XF    X",
            "X     X                X     X",
            "X   XXX    F     X     X     X",
            "X                X           X",
            "X                X    F      X",
            "X       X        X           X",
            "X       X            XXX     X",
            "X       X                    X",
            "X     X                XF    X",
            "X   XXX    F     X     X    FX",
            "X                X           X",
            "X                X    F      X",
            "X       X        X           X",
            "X   F   X            XXX     X",
            "XF      X                   FX",
            "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
        }
    };

    private int tamanyoCasilla = 32;
    private float segEspera = 0.400f;
    private double tiempoAcumulado = 0.0f;
    private List<Node2D> colaSerpiente = new List<Node2D>();
    private PackedScene casillaPared;
    private PackedScene casillaFruta;
    private PackedScene segmentoSerpiente;
    private int nivelActual = 0;
    private int frutasRestantes = 0;
    private bool enPartida = false;
    private int puntos = 0;

    public override void _Ready()
    {
        velocidad = new Vector2(tamanyoCasilla, 0);
        GetNode<Node2D>("Serpiente").Position = new Vector2(10 * tamanyoCasilla + tamanyoCasilla / 2.0f, 7 * tamanyoCasilla + tamanyoCasilla / 2.0f);
        segmentoSerpiente = (PackedScene)ResourceLoader.Load("res://serpiente.tscn");
        casillaPared = (PackedScene)ResourceLoader.Load("res://pared.tscn");
        casillaFruta = (PackedScene)ResourceLoader.Load("res://fruta.tscn");
        GenerarLaberinto();
        TerminarPartida();
    }

    public override void _Process(double delta)
    {
        if (Input.IsActionPressed("ui_up") && enPartida)
        {
            velocidad = new Vector2(0, -tamanyoCasilla);
        }
        if (Input.IsActionPressed("ui_down") && enPartida)
        {
            velocidad = new Vector2(0, tamanyoCasilla);
        }
        if (Input.IsActionPressed("ui_left") && enPartida)
        {
            velocidad = new Vector2(-tamanyoCasilla, 0);
        }
        if (Input.IsActionPressed("ui_right") && enPartida)
        {
            velocidad = new Vector2(tamanyoCasilla, 0);
        }

        if (!enPartida && Input.IsActionJustPressed("comenzar"))
        {
            ComenzarPartida();
        }

        tiempoAcumulado += delta;
        if (tiempoAcumulado >= segEspera)
        {
            MoverSerpiente();
            tiempoAcumulado = 0;
        }
    }

    private void GenerarLaberinto()
    {
        frutasRestantes = 0;
        for (int y = 0; y < niveles[nivelActual].Length; y++)
        {
            for (int x = 0; x < niveles[nivelActual][y].Length; x++)
            {
                char caracter = niveles[nivelActual][y][x];
                Vector2 posicion = new Vector2(x, y) * tamanyoCasilla + new Vector2(tamanyoCasilla / 2.0f, tamanyoCasilla / 2.0f);

                if (caracter == 'X')
                {
                    var pared = (Node2D)casillaPared.Instantiate();
                    pared.AddToGroup("Pared");
                    pared.Position = posicion;
                    AddChild(pared);
                }
                else if (caracter == 'F')
                {
                    var fruta = (Node2D)casillaFruta.Instantiate();
                    fruta.AddToGroup("Fruta");
                    fruta.Position = posicion;
                    AddChild(fruta);
                    frutasRestantes++;
                }
            }
        }
    }

    private void  _on_serpiente_area_entered(Area2D otro)
    {
        if (otro.IsInGroup("Pared") || otro.IsInGroup("Serpiente"))
        {
            GetNode<AudioStreamPlayer2D>("sonidoPared").Play();
            TerminarPartida();
        }
        else if (otro.IsInGroup("Fruta"))
        {
            CallDeferred("AumentarSerpiente");
            GetNode<AudioStreamPlayer2D>("sonidoFruta").Play();
            if (segEspera > 0.060f)
            {
                segEspera -= 0.030f;
            }
            otro.QueueFree();
            puntos++;
            GetNode<Label>("textoPuntos").Text = puntos.ToString();
            frutasRestantes--;
            if (frutasRestantes == 0)
            {
                AvanzarNivel();
            }
        }
    }

    private void AumentarSerpiente()
    {
        var nuevoSegmento = (Node2D)segmentoSerpiente.Instantiate();
        nuevoSegmento.AddToGroup("Serpiente");
        nuevoSegmento.Position = new Vector2(-100, -100);
        colaSerpiente.Add(nuevoSegmento);
        AddChild(nuevoSegmento);
    }

    private void MoverSerpiente()
    {
        if (colaSerpiente.Count > 0 && enPartida)
        {
            for (int i = colaSerpiente.Count - 1; i > 0; i--)
            {
                colaSerpiente[i].Position = colaSerpiente[i - 1].Position;
            }
            colaSerpiente[0].Position = GetNode<Node2D>("Serpiente").Position;
        }
        GetNode<Node2D>("Serpiente").Position += velocidad;
    }

    private void LimpiarNodosNivel()
    {
        foreach (Node nodo in GetChildren())
        {
            if (nodo.IsInGroup("Pared") || nodo.IsInGroup("Fruta"))
            {
                nodo.QueueFree();
            }
        }
    }

    private void AvanzarNivel()
    {
        nivelActual++;
        if (nivelActual >= niveles.Count)
        {
            nivelActual = 0;
        }
        LimpiarNodosNivel();
        GenerarLaberinto();
    }

    private void LimpiarSerpiente()
    {
        foreach (var segmento in colaSerpiente)
        {
            segmento.QueueFree();
        }
        colaSerpiente.Clear();
    }

    private void ComenzarPartida()
    {
        GetNode<Label>("textoComenzar").Visible = false;
        enPartida = true;
        velocidad = new Vector2(tamanyoCasilla, 0);
        GetNode<Node2D>("Serpiente").Position =
            new Vector2(10 * tamanyoCasilla + tamanyoCasilla / 2.0f,
            7 * tamanyoCasilla + tamanyoCasilla / 2.0f);
        puntos = 0;
        GetNode<Label>("textoPuntos").Text = "0";
        LimpiarSerpiente();
        LimpiarNodosNivel();
        nivelActual = 0;
        GenerarLaberinto();
        segEspera = 0.400f;
    }

    private void TerminarPartida()
    {
        GetNode<Label>("textoComenzar").Visible = true;
        velocidad = new Vector2(0, 0);
        enPartida = false;
    }
}
