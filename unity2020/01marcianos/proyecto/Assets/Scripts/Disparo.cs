using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Disparo : MonoBehaviour
{
    [SerializeField] Transform prefabExplosion = null;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y > 5)
        {
            Destroy(gameObject);
        }
    }

    private void OnTriggerEnter2D(Collider2D otro)
    {
        if (otro.tag == "Enemigo")
        {
            Transform explosion = Instantiate(prefabExplosion,
                otro.transform.position,
                Quaternion.identity);
            Destroy(otro.gameObject);
            Destroy(explosion.gameObject, 1.5f);
            Destroy(gameObject);
        }
    }
}
