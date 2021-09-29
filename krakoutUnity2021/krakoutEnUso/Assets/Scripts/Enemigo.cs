using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemigo : MonoBehaviour
{
    float velocidad = 3f;

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

        if ((transform.position.x < -5)
            || (transform.position.x > 5))
            velocidad = -velocidad;
    }
}
