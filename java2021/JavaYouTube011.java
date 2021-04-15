// Media, máximo y mínimo de una cantidad indeterminada de números

import java.util.Scanner;

public class JavaYouTube011 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        int suma = 0;
        int cantidad = 0;
        int maximo = 0;
        int minimo = 0;
        String respuesta;
        
        do {
            System.out.print("Dime un dato a sumar: ");
            respuesta = sc.nextLine();
            if ( ! respuesta.equals("") ) {
                int n = Integer.parseInt(respuesta);
                suma += n;
                cantidad ++;
                
                if (cantidad == 1) {
                    maximo = n;
                    minimo = n;
                }
                else {
                    if (n > maximo) {
                        maximo = n;
                    } 
                    if (n < minimo) {
                        minimo = n;
                    }
                }
            }
            
        }
        while ( ! respuesta.equals("") );
        
        System.out.println("La media es: " + (double) suma / cantidad);
        System.out.println("El maximo es: " + maximo);
        System.out.println("El minimo es: " + minimo);
    }
}

