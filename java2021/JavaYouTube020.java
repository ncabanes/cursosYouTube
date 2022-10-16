// Triángulo de asteriscos, creciente, alineado a la derecha

import java.util.Scanner;

public class JavaYouTube020 {
    
    public static void dibujarTriangulo(int anchura) {
        int asteriscos = 1;
        int espacios = anchura - 1;
        
        for (int fila = 0; fila < anchura; fila++) {
            for (int columnaEspacios = 0; columnaEspacios < espacios; columnaEspacios++)  {
                System.out.print(" ");
            }
            for (int columnaAsteriscos = 0; columnaAsteriscos < asteriscos; columnaAsteriscos++) {
                System.out.print("*");
            }
            System.out.println();
            
            asteriscos ++;
            espacios --;
        }
    }
    
    public static void main (String[] args) {
        
        int ancho;
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el ancho del triangulo: ");
        ancho = sc.nextInt();
        
        dibujarTriangulo(ancho);
    }
}

