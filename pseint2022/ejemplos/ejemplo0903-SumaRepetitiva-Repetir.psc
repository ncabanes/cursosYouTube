// Suma repetitiva, con sintaxis estricta
// Variante con "Repetir ... hasta"

Proceso SumaRepetitivaRepetir
	
	Definir x, suma como real;
	
	suma <- 0;

	Repetir
		Escribir "Dime un número (0 para terminar)";
		Leer x;
		
		suma <- suma + x;
		
	Hasta Que x = 0
	
	Escribir "La suma de todos ellos es: ", suma;
	
FinProceso
