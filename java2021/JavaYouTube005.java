// Dividir dos enteros, solo si el segundo no es cero

import java.util.Scanner;

public class JavaYouTube005 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el primer numero: ");
        int n1 = sc.nextInt();
        System.out.print("Dime el segundo numero: ");
        int n2 = sc.nextInt();
        
        if (n2 != 0) {
            System.out.print("Su division es: " +( (double) n1 / n2) );
        }
        else {
            System.out.print("No puedo dividir entre cero");
        }
    }
}

