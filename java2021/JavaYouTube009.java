// Dividir dos enteros, solo si el segundo no es cero (2: while)

import java.util.Scanner;

public class JavaYouTube009 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el primer numero: ");
        int n1 = sc.nextInt();
        System.out.print("Dime el segundo numero: ");
        int n2 = sc.nextInt();
        
        while (n2 == 0) {
            System.out.println("No puedo dividir entre cero");
            System.out.print("Dime otra vez el segundo numero: ");
            n2 = sc.nextInt();
        }
        
        System.out.println("Su division es: " +( (double) n1 / n2) );
    }
}

