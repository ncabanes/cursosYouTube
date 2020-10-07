using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Personaje : MonoBehaviour
{
    float velocidadAvance = 2.0f;
    float velocidadRotacion = 100.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");

        float avance = vertical * velocidadAvance * Time.deltaTime;
        float rotacion = horizontal * velocidadRotacion * Time.deltaTime;

        transform.Rotate(Vector3.up, rotacion, Space.Self);
        transform.position += transform.forward * avance;
    }
}
