using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemigo : MonoBehaviour
{
    private float velocidadX = 2;
    private float velocidadY = -1.2f;
    private float velocidadDisparo = -2;
    [SerializeField] Transform prefabDisparo = null;

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(Disparar());
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(
           velocidadX * Time.deltaTime,
           velocidadY * Time.deltaTime, 
           0);

        if ((transform.position.x < -4) 
                || (transform.position.x > 4))
            velocidadX = -velocidadX;
        if ((transform.position.y < -2.5)
                || (transform.position.y > 2.5))
            velocidadY = -velocidadY;
    }

    IEnumerator Disparar()
    {
        float pausa = Random.Range(3, 7.5f);
        yield return new WaitForSeconds(pausa);
        Transform disparo = Instantiate(prefabDisparo,
                transform.position,
                Quaternion.identity);
        disparo.gameObject.GetComponent<Rigidbody2D>().velocity =
            new Vector3(0, velocidadDisparo, 0);

        StartCoroutine(Disparar());
    }
}
