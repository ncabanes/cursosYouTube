using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    float xInicial, yInicial;
    float velocidad = 5f;

    // Start is called before the first frame update
    void Start()
    {
        xInicial = transform.position.x;
        yInicial = transform.position.y;
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

    public void Recolocar()
    {
        transform.position = new Vector3(xInicial, yInicial, 0);
    }
}
