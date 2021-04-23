// ¿Es primo un número entero?

import java.util.Scanner;

public class JavaYouTube019 {
    
    public static boolean esPrimo(int n) {
        int cantidadDivisores = 0;
        
        for (int i = 1; i <= n; i++) {
            if (n % i == 0) {
                cantidadDivisores ++;
            }
        }
        
        if (cantidadDivisores == 2) {
            return true;
        }
        else {
            return false;
        }
    }
    
    public static void main (String[] args) {
        
        int dato;
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el número a comprobar: ");
        dato = sc.nextInt();
        
        if (esPrimo(dato)) {
            System.out.println("Es primo");
        }
        else {
            System.out.println("No es primo");
        }
    }
}

