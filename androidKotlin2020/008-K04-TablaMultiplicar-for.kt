// Tabla de multiplicar, con "for"

fun main() { 
    print("Dime un número: ")
    val n = readLine()!!.toInt()
    for (i in 0..10) { 
        println("$n x $i = ${n * i}")
    } 
}
