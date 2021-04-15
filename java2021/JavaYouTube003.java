// Convertir de millas a kilómetros

import java.util.Scanner;

public class JavaYouTube003 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int millas;
        double kilometros;
        
        System.out.print("Dime la cantidad de millas: ");
        millas = sc.nextInt();
        kilometros = millas * 1.609;
        
        System.out.println("En kilometros, equivale a " + kilometros);
    }
}
