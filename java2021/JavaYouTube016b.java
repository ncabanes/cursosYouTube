// Buscar en un array: v2, interrumpir si se encuentra

import java.util.Scanner;

public class JavaYouTube016b {
    
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
        
        int i = 0;
        while ( i < 10  && ! encontrado )   {
            if (datos[i] == numeroABuscar) {
                encontrado = true;
            }
            i++;
        }
        
        if (encontrado)
            System.out.println("Encontrado");
        else
            System.out.println("No encontrado");
        
    }
}

