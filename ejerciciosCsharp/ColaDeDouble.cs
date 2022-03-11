/*
Crea una clase "ColaDeDouble", que permita guardar (usando un método "Encolar") 
número reales de doble precisión, obtenerlos (con un método "Desencolar") y 
saber cuántos datos hay (con una propiedad "Cantidad"). Internamente debe 
emplear una lista con tipo. 

Incluye un Main que permita, mediante un menú, añadir algún dato y mostrar los 
que contiene. Además, este Main se podrá lanzar indicando opcionalmente en 
línea de comandos la opción "/ayuda", y en ese caso mostrará un mensaje de 
ayuda como "Programa interactivo de cola de números reales" y saldrá sin llegar 
a lanzar el menú.
*/

using System;
using System.Collections.Generic;

class ColaDeDouble
{
    private List<double> datos;

    public ColaDeDouble()
    {
        datos = new List<double>();
    }

    public int Cantidad
    {
        get { return datos.Count; }
    }


    public void Encolar(double n)
    {
        datos.Add(n);
    }

    public double Desencolar()
    {
        double dato = datos[0];
        datos.RemoveAt(0);
        return dato;
    }

}

class PruebaColaDeDouble
{
    static void Main(string[] args)
    {
        if (args.Length > 0)
        {
            if (args[0].ToLower() == "/ayuda")
                Console.WriteLine("Programa interactivo de cola de números reales");
            else
                Console.WriteLine("Parámetros aceptables: /ayuda");
        }
        else
        {
            ColaDeDouble cola = new ColaDeDouble();
            /*
            cola.Encolar(1.2);
            cola.Encolar(3.4);

            while (cola.Cantidad > 0)
            {
                Console.WriteLine( cola.Desencolar() );
            }
            */
            string opcion;
            do
            {
                Console.WriteLine("1- Añadir un dato");
                Console.WriteLine("2- Mostrar todos");
                Console.WriteLine("0- Salir");
                opcion = Console.ReadLine();
                switch (opcion)
                {
                    case "1":
                        Console.Write("Dime el número: ");
                        cola.Encolar(Convert.ToDouble(
                            Console.ReadLine()));
                        break;
                    case "2":
                        while (cola.Cantidad > 0)
                        {
                            Console.WriteLine(cola.Desencolar());
                        }
                        break;
                    default:
                        break;
                }
            }
            while (opcion != "0");
        }
    }
}
