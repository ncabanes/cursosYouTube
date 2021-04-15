// Grados fahrenheit a centigrados

import java.util.Scanner;

public class JavaYouTube004 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        double fahrenheit, centigrados;
        
        System.out.print("Dime la temperatura en Fahrenheit: ");
        fahrenheit = sc.nextDouble();
        centigrados = (fahrenheit - 32) / 1.8;
        System.out.print("Su equivalencia es: " + centigrados);
    }
}

