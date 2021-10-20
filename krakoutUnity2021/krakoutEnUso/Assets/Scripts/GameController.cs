using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController : MonoBehaviour
{

    int puntos;
    [SerializeField] UnityEngine.UI.Text textoPuntos;

    // Start is called before the first frame update
    void Start()
    {
        puntos = 0;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void IncrementarPuntos(int cantidad)
    {
        puntos += cantidad;
        textoPuntos.text = "Puntos\n" + puntos;
    }
}
