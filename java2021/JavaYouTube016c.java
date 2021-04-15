// Buscar en un array: v3, contador

import java.util.Scanner;

public class JavaYouTube016c {
    
    public static void main (String[] args) {
        
        Scanner sc = new Scanner(System.in);
        int[] datos = new int[10];
        int numeroABuscar;
        int apariciones = 0;
        
        for (int i = 0; i < 10; i++) {
            System.out.print("Dime el dato " + (i+1) +": ");
            datos[i] = sc.nextInt();
        }
        
        System.out.print("Que dato buscamos? ");
        numeroABuscar = sc.nextInt();
        
        for (int i = 0; i < 10; i++) {
            if (datos[i] == numeroABuscar) {
                apariciones++;
            }
        }
        
        if (apariciones > 0)
            System.out.println("Encontrado " + apariciones + " veces");
        else
            System.out.println("No encontrado");
        
    }
}

