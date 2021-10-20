using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour
{

    static int puntos = 0;
    static int vidas = 3;
    [SerializeField] UnityEngine.UI.Text textoPuntos;
    [SerializeField] int nivel;
    [SerializeField] int nivelMax;
    [SerializeField] int ladrillos;

    // Start is called before the first frame update
    void Start()
    {
        ActualizarMarcador();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void IncrementarPuntosEnemigo(int cantidad)
    {
        puntos += cantidad;
        ActualizarMarcador();
    }

    public void IncrementarPuntos(int cantidad)
    {
        puntos += cantidad;
        ladrillos--;
        ActualizarMarcador();

        if (ladrillos <= 0)
        {

            nivel++;
            if (nivel <= nivelMax)
            {
                SceneManager.LoadScene("Nivel" +
                    nivel.ToString("00"));
            }
            else
            {
                puntos = 0;
                vidas = 3;
                nivel = 1;
                SceneManager.LoadScene("Bienvenida");
            }
        }
    }

    public void PerderVida()
    {
        vidas--;
        ActualizarMarcador();

        if (vidas <= 0)
        {
            puntos = 0;
            vidas = 3;
            SceneManager.LoadScene("Bienvenida");
        }
    }

    private void ActualizarMarcador()
    {
        textoPuntos.text = "Puntos\n" + puntos +
                    "\n\nVidas " + vidas;
    }
}
