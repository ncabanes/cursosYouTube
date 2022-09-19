// Crea una función MayorDeTres, que reciba tres números
// devuelva el valor del mayor de ellos

Funcion resultado <- MayorDeTres(n1, n2, n3)
	si n1 >= n2 y n1 >= n3 Entonces
		resultado <- n1
	SiNo
		si n2 >= n1 y n2 >= n3 Entonces
			resultado <- n2
		SiNo
			resultado <- n3
		FinSi
	FinSi
FinFuncion

Algoritmo FuncionMayorDeTres
	Escribir MayorDeTres(5, 7, 5)
FinAlgoritmo
