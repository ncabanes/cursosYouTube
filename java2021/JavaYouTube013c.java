// Rectangulo hueco de asteriscos
// (Seguna aproximación, ligeramente mas rapida)

import java.util.Scanner;

public class JavaYouTube013c {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el ancho del rectangulo: ");
        int ancho = sc.nextInt();
        
        System.out.print("Dime el alto del rectangulo: ");
        int alto = sc.nextInt();
        
        // Primera fila
        for (int columna = 1; columna <= ancho; columna++)
            System.out.print("*");
        System.out.println();
        
        // Filas intermedias
        for (int fila = 1; fila <= alto-2; fila++)
        {
            System.out.print("*");
            for (int columna = 1; columna <= ancho-2; columna++)
            {
                System.out.print(" ");
            }
            System.out.println("*");
        }
        
        // Ultima fila
        for (int columna = 1; columna <= ancho; columna++)
            System.out.print("*");
        System.out.println();
        
        
    }
}

