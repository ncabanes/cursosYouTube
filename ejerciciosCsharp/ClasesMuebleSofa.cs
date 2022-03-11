/* 

Crea una clase Mueble, con atributos "codigo" (texto), "descripcion" (texto) 
y "material" (texto), con un constructor reciba los tres atributos en ese 
orden, otro constructor reciba sólo los dos primeros y prefije el material a 
"Madera", propiedades en formato largo, y un ToString que devuelva ambos en ese 
orden y separados por "-".

Crea una clase Sofa, que herede de ella y añada un atributo "plazas" (un número 
entero muy pequeño), con propiedades en formato largo que permitan leer su 
valor pero no modificarlo. Tendrá un constructor que reciba los cuatro 
atributos y un segundo constructor que reciba sólo código y descripción, y 
prefije el material a "Madera y textil" y las plazas a 3. El ToString será 
similar al de un mueble genérico, pero terminado en " Sofá de X plazas" (con el 
valor numérico de las plazas, en vez de esa X).

*/

using System;

class PruebaMuebleSofa
{
    static void Main()
    {
        Mueble m = new Mueble("s1", "Silla", "Metal");
        Sofa s = new Sofa("sofa01", "Sofa Hector");

        Console.WriteLine(m);
        Console.WriteLine(s);
    }
}

// --------------

class Mueble
{
    protected string codigo;
    protected string descripcion;
    protected string material;
    
    public Mueble(string codigo, string descripcion, string material)
    {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.material = material;
    }

    public Mueble(string codigo, string descripcion)
        : this (codigo, descripcion, "Madera")
    {
    }

    public string Codigo
    {
        get { return codigo; }
        set { codigo = value; }
    }

    public string Descripcion
    {
        get { return descripcion; }
        set { descripcion = value; }
    }

    public string Material
    {
        get { return material; }
        set { material = value; }
    }

    public override string ToString()
    {
        return Codigo + " - " + Descripcion;
    }

}


// --------------

class Sofa : Mueble
{
    protected byte plazas;

    public Sofa(string codigo, string descripcion, string material,
        byte plazas) : base(codigo, descripcion, material)
    {
        this.plazas = plazas;
    }

    public Sofa(string codigo, string descripcion) 
        : this(codigo, descripcion, "Madera y textil", 3)
    {
    }

    public byte Plazas
    {
        get { return plazas; }
    }

    public override string ToString()
    {
        return base.ToString() + " Sofá de " + plazas + " plazas";
    }
}

