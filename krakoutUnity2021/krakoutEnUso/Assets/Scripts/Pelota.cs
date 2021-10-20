using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pelota : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Recolocar();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Recolocar()
    {
        transform.position = new Vector2(4.3f, -0.5f);
        GetComponent<Rigidbody2D>().velocity =
            new Vector2(-3, 2);
    }
}
