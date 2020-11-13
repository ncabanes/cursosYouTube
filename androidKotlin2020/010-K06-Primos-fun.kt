// Ver si un número es primo

fun main() {
    println( esPrimo(5) )
}

fun esPrimo(n: Int): Boolean {
    var divisores = 1
    for (i in 2..n) {
        if (n % i == 0) divisores++
    }
    if (divisores == 2) {
        return true
    } else {
        return false
    } 
}
