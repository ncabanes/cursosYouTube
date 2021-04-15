// Buscar en un array: v1, esqueleto básico

import java.util.Scanner;

public class JavaYouTube016 {
    
    public static void main (String[] args) {
        
        Scanner sc = new Scanner(System.in);
        int[] datos = new int[10];
        int numeroABuscar;
        boolean encontrado = false;
        
        for (int i = 0; i < 10; i++) {
            System.out.print("Dime el dato " + (i+1) +": ");
            datos[i] = sc.nextInt();
        }
        
        System.out.print("Que dato buscamos? ");
        numeroABuscar = sc.nextInt();
        
        for (int i = 0; i < 10; i++) {
            if (datos[i] == numeroABuscar)
                encontrado = true;
        }
        
        if (encontrado)
            System.out.println("Encontrado");
        else
            System.out.println("No encontrado");
        
    }
}

