using System;

class ValorNumerico
{
    static long ValorNumericoIt(string cadena)
    {
        string resultado = "0";
        foreach (char c in cadena)
        {
            if ((c >= '0') && (c <= '9'))
                resultado += c;
        }
        return Convert.ToInt64(resultado);
    }

    static long ValorNumericoIt2(string cadena)
    {
        long resultado = 0;
        foreach (char c in cadena)
        {
            if ((c >= '0') && (c <= '9'))
            {
                int valorNumerico = c - '0';
                resultado = resultado * 10
                    + valorNumerico;
            }
        }
        return resultado;
    }

    static long ValorNumericoIt3(string cadena)
    {
        string cadenaNumerica = "";
        foreach (char c in cadena)
        {
            if ((c >= '0') && (c <= '9'))
                cadenaNumerica += c;
        }

        long resultado = 0;
        for (int i = 0; i < cadenaNumerica.Length; i++)
        {
            int cifraNumerica = cadenaNumerica[i] - '0';
            int potenciaDiez = cadenaNumerica.Length - i - 1;
            //resultado += (long) (cifraNumerica * Math.Pow(10, potenciaDiez));
            resultado += cifraNumerica * PotenciaDeDiez(potenciaDiez);
        }
        return resultado;
    }

    static long ValorNumericoRe(string cadena)
    {
        string cadenaNumerica = "";
        foreach (char c in cadena)
        {
            if ((c >= '0') && (c <= '9'))
                cadenaNumerica += c;
        }

        if (cadenaNumerica == "")
            return 0;

        if (cadenaNumerica.Length == 1)
            return Convert.ToInt64(cadenaNumerica.Substring(0, 1));

        int cifraNumerica = cadenaNumerica[0] - '0';
        int potenciaDiez = cadenaNumerica.Length - 1;
        return cifraNumerica * PotenciaDeDiez(potenciaDiez) +
            ValorNumericoRe(cadenaNumerica.Substring(1));
    }

    static long PotenciaDeDiez(int cifras)
    {
        int resultado = 1;
        for (int i = 0; i < cifras; i++)
        {
            resultado *= 10;
        }
        return resultado;
    }

    static void Main(string[] args)
    {
        Console.WriteLine( ValorNumericoIt("a2.3 4,5as"));
        Console.WriteLine( ValorNumericoIt2("a2.3 4,5as"));
        Console.WriteLine( ValorNumericoIt3("a2.3 4,5as"));
        Console.WriteLine( ValorNumericoRe("a2.3 4,5as"));

        Console.WriteLine(ValorNumericoIt("234"));
        Console.WriteLine(ValorNumericoIt2("234"));
        Console.WriteLine(ValorNumericoIt3("234"));
        Console.WriteLine(ValorNumericoRe("234"));

        Console.WriteLine(ValorNumericoIt(""));
        Console.WriteLine(ValorNumericoIt2(""));
        Console.WriteLine(ValorNumericoIt3(""));
        Console.WriteLine(ValorNumericoRe(""));
    }
}

