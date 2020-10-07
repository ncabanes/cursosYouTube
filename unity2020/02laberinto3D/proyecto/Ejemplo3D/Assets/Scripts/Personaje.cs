using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Personaje : MonoBehaviour
{
    float velocidad = 200.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");

        float avance = horizontal * velocidad * Time.deltaTime;
        float lado = vertical * velocidad * Time.deltaTime;

        GetComponent<Rigidbody>().velocity =
            new Vector3(avance, 0, lado);

    }
}
