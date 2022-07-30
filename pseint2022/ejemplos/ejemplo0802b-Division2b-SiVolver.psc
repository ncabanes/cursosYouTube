// División de 2 números, versión 2
// Version que comprueba errores con "si"

Algoritmo Division2
	Escribir "Dime el dividendo"
	Leer a
	Escribir "Dime el divisor"
	Leer b
	
	Si b = 0 Entonces
		Escribir "No puedo dividir entre cero"
		Escribir "Dime el divisor otra vez"
		Leer b
	FinSi
	
	Escribir "Su división es ", a/b
	
	
FinAlgoritmo
