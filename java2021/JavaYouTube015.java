// Máximo, mínimo y media de 10 datos

import java.util.Scanner;

public class JavaYouTube015 {
    
    public static void main (String[] args) {
        
        Scanner sc = new Scanner(System.in);
        int[] datos = new int[10];
        int maximo, minimo, suma = 0;
        
        for (int i = 0; i < 10; i++) {
            System.out.print("Dime el dato " + (i+1) +": ");
            datos[i] = sc.nextInt();
        }
        
        for (int i = 0; i < 10; i++) {
            suma += datos[i];
        }
        
        maximo = minimo = datos[0];
        for (int i = 1; i < 10; i++) {
            if (datos[i] > maximo) {
                maximo = datos[i];
            }
            if (datos[i] < minimo) {
                minimo = datos[i];
            }
        }
        
        System.out.println("El maximo es " + maximo);
        System.out.println("El minimo es " + minimo);
        System.out.println("La media es " + (suma/10.0) );
        
    }
}

