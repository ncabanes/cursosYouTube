// Ver si un número es par, usando 
// el "if" en formato de expresión
// (v2)

fun main() {

    print("Número a analizar? ")
    var n = readLine()!!.toInt()

    println( if (n%2 == 0) "Par" else "Impar" )
    
}
