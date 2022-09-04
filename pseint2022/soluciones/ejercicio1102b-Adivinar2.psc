Algoritmo Adivinar2
	
	numeroAlAzar <- Azar(101)
	intentosRestantes <- 7
	
	Repetir
		Escribir "Intentos restantes: ", intentosRestantes
		Escribir Sin Saltar "Dime un número "
		Leer respuesta
		
		Si respuesta > numeroAlAzar Entonces
			Escribir "Te has pasado"
		SiNo
			Si respuesta < numeroAlAzar Entonces
				Escribir "Te has quedado corto"
			FinSi
		FinSi
		
		intentosRestantes <- intentosRestantes - 1
		
	Hasta Que respuesta = numeroAlAzar o intentosRestantes = 0
	
	Si respuesta = numeroAlAzar Entonces
		Escribir "Felicidades!!!"
	SiNo
		Escribir "Lo siento. Era ", numeroAlAzar
	FinSi
	
FinAlgoritmo
