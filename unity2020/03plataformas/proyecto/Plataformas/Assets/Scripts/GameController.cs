using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour
{
    private int itemsRestantes;
    private static int puntos = 0;
    private static int vidas = 3;

    // Start is called before the first frame update
    void Start()
    {
        itemsRestantes = FindObjectsOfType<Diamante>().Length;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.N))
            AvanzarNivel();
    }

    public void AnotarItemRecogido()
    {
        puntos += 10;
        Debug.Log("Puntos: " + puntos);

        itemsRestantes--;
        Debug.Log("Items restantes: " + itemsRestantes);
        if (itemsRestantes <= 0)
            AvanzarNivel();
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

    public void AvanzarNivel()
    {
        SceneManager.LoadScene("Nivel2");
    }
}
