// Mayor de dos numeros, con operador ternario

import java.util.Scanner;

public class JavaYouTube007 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el primer numero: ");
        int n1 = sc.nextInt();
        System.out.print("Dime el segundo numero: ");
        int n2 = sc.nextInt();
        
        // Con "if"
        int mayor;
        if (n1 > n2) {
            mayor = n1 ;
        }
        else {
            mayor = n2;
        }
        System.out.println("if: El mayor es " + mayor);        
        
        // Con operador ternario
        mayor = n1 > n2 ? n1 : n2;
        System.out.println("ternario: El mayor es " + mayor);        
    }
}

