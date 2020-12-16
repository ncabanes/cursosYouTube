// Ver si un número es par, usando 
// el "if" en formato de expresión

fun main() {
    print("Número a analizar? ")
    val n = readLine()!!.toInt()
    
    val esPar = if (n % 2 == 0) true else false
    println("Par... " + esPar)
}
