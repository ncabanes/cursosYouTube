Algoritmo SubrayadosParametros
	
	EscribirSubrayado(" Hola ")
	EscribirSubrayado("Adios")
	EscribirSubrayado("Qué tal?")

FinAlgoritmo

SubProceso EscribirSubrayado( frase )
	Escribir frase
	para i <- 1 hasta longitud(frase) Hacer
		Escribir Sin Saltar "-"
	FinPara
	Escribir ""
FinSubProceso
	