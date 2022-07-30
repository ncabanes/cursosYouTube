// Suma repetitiva, con sintaxis estricta

Proceso SumaRepetitiva
	
	Definir x, suma como real;
	
	Escribir "Dime un número (0 para terminar)";
	Leer x;
	suma <- 0;
	
	Mientras x <> 0 Hacer
		suma <- suma + x;
		
		Escribir "Dime otro número (0 para terminar)";
		Leer x;
	FinMientras
	
	Escribir "La suma de todos ellos es: ", suma;
	
FinProceso
