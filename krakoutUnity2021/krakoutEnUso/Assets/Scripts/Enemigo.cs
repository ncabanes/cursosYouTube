using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemigo : MonoBehaviour
{
    float velocidad = 3f;
    float velocidadBase = 3f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(
            velocidad * Time.deltaTime,
            0,
            0);

        if (transform.position.x > 5)
            velocidad = -velocidadBase;

        if (transform.position.x < -3.5f)
            velocidad = velocidadBase;
    }

    private void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.tag == "Pelota")
        {
            FindObjectOfType<GameController>().
                SendMessage("IncrementarPuntosEnemigo", 20);
            Destroy(gameObject);
        }
    }
}
