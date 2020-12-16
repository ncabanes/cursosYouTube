// Nombre de un día de la semana, usando "when"

fun main() {
    println("Dime el número de día")
    var dia = readLine()!!.toInt()
    
    when(dia) {
        1 -> println("Lunes")
        2 -> println("Martes")
        3 -> println("Miércoles")
        4 -> println("Jueves")
        5 -> println("Viernes")
        6, 7 -> println("Fin de semana")
        else -> println("Día incorrecto")
    }
}
