Algoritmo Adivinar1
	
	numeroAlAzar <- Azar(101)
	
	Repetir
		Escribir Sin Saltar "Dime un número "
		Leer respuesta
		
		Si respuesta > numeroAlAzar Entonces
			Escribir "Te has pasado"
		SiNo
			Si respuesta < numeroAlAzar Entonces
				Escribir "Te has quedado corto"
			FinSi
		FinSi
		
	Hasta Que respuesta = numeroAlAzar
	Escribir "Felicidades!!!"
	
FinAlgoritmo
