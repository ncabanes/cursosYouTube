using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour
{
    private int itemsRestantes;
    private int puntos;
    private int vidas;
    private int nivelActual;
    [SerializeField] UnityEngine.UI.Text textoGameOver;
    

    // Start is called before the first frame update
    void Start()
    {
        itemsRestantes = FindObjectsOfType<Diamante>().Length;
        puntos = FindObjectOfType<GameStatus>().puntos;
        vidas = FindObjectOfType<GameStatus>().vidas;
        nivelActual = FindObjectOfType<GameStatus>().nivelActual;
        textoGameOver.enabled = false;
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
        FindObjectOfType<GameStatus>().puntos = puntos;
        Debug.Log("Puntos: " + puntos);

        itemsRestantes--;
        Debug.Log("Items restantes: " + itemsRestantes);
        if (itemsRestantes <= 0)
            AvanzarNivel();
    }

    public void PerderVida()
    {
        vidas--;
        FindObjectOfType<GameStatus>().vidas = vidas;
        FindObjectOfType<Player>().SendMessage("Recolocar");
        Debug.Log("Vidas: " + vidas);
        if (vidas <= 0)
        {
            StartCoroutine(TerminarPartida());
        }
    }

    private IEnumerator TerminarPartida()
    {
        textoGameOver.enabled = true;
        Time.timeScale = 0.1f;
        yield return new WaitForSecondsRealtime(3);
        Time.timeScale = 1;
        SceneManager.LoadScene("Menu");
    }

    public void AvanzarNivel()
    {
        nivelActual++;
        if (nivelActual > FindObjectOfType<GameStatus>().nivelMasAlto)
            nivelActual = 1;
        FindObjectOfType<GameStatus>().nivelActual = nivelActual;
        SceneManager.LoadScene("Nivel"+nivelActual);
    }
}
