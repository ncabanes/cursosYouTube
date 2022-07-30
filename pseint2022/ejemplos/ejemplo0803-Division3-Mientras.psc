// División de 2 números, versión 3
// Version que comprueba errores con "mientras"

Algoritmo Division3
	Escribir "Dime el dividendo"
	Leer a
	Escribir "Dime el divisor"
	Leer b
	
	Mientras b = 0 Hacer
		Escribir "No puedo dividir entre cero"
		Escribir "Dime el divisor otra vez"
		Leer b
	FinMientras
	
	Escribir "Su división es ", a/b
	
	
FinAlgoritmo
