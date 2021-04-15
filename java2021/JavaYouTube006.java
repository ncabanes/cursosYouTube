// Mayor de dos numeros

import java.util.Scanner;

public class JavaYouTube006 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el primer numero: ");
        int n1 = sc.nextInt();
        System.out.print("Dime el segundo numero: ");
        int n2 = sc.nextInt();
        
        // Valor numerico del mayor
        if (n1 > n2) {
            System.out.println("El mayor es " + n1 );
        }
        else {
            System.out.println("El mayor es " + n2);
        }
        
        // Posicion del mayor
        if (n1 > n2) {
            System.out.println("El mayor es el primero" );
        }
        else if (n1 < n2) {
            System.out.println("El mayor es el segundo" );
        }
        else {
            System.out.println("Son iguales");
        }
        
    }
}

