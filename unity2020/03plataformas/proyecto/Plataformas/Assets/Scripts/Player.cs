using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    float velocidad = 5f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float horizontal = Input.GetAxis("Horizontal");
        transform.Translate(
            horizontal * velocidad * Time.deltaTime,
            0, 0);

        float salto = Input.GetAxis("Jump");
        if (salto > 0)
        {
            Vector3 fuerzaSalto = new Vector3(0, 10 , 0);
            GetComponent<Rigidbody2D>().AddForce(fuerzaSalto);
        }
    }
}
