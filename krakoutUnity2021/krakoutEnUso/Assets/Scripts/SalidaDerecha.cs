using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SalidaDerecha : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        FindObjectOfType<Pelota>().SendMessage("Recolocar");
        FindObjectOfType<GameController>().SendMessage("PerderVida");
    }
}
