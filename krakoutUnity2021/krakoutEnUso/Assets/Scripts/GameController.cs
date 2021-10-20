using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour
{

    int puntos;
    int vidas;
    [SerializeField] UnityEngine.UI.Text textoPuntos;

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

    public void IncrementarPuntos(int cantidad)
    {
        puntos += cantidad;
        ActualizarMarcador();
    }

    private void ActualizarMarcador()
    {
        textoPuntos.text = "Puntos\n" + puntos +
                    "\n\nVidas\n" + vidas;
    }

    public void PerderVida()
    {
        vidas--;
        ActualizarMarcador();
        if (vidas <= 0)
        {
            SceneManager.LoadScene("Bienvenida");
        }
    }
}
