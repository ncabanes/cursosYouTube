using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController : MonoBehaviour
{
    private int puntos;
    private int vidas;

    // Start is called before the first frame update
    void Start()
    {
        puntos = 0;
        vidas = 3;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void AnotarItemRecogido()
    {
        puntos += 10;
        Debug.Log("Puntos: " + puntos);
    }

    public void PerderVida()
    {
        vidas--;
        FindObjectOfType<Player>().SendMessage("Recolocar");
        Debug.Log("Vidas: " + vidas);
        if (vidas <= 0)
        {
            // TO DO: Ir al menú principal
            Debug.Log("Partida terminada");
            Application.Quit();
        }
    }
}
