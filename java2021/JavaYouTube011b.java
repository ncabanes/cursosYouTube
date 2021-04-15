// Media, máximo y mínimo de una cantidad indeterminada de números

import java.util.Scanner;

public class JavaYouTube011b {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        int suma = 0;
        int cantidad = 0;
        String respuesta;
        
        System.out.print("Dime un dato a sumar: ");
        respuesta = sc.nextLine();
        int n = Integer.parseInt(respuesta);
        int maximo = n;
        int minimo = n;
        suma += n;
        cantidad ++;
        
        while ( ! respuesta.equals("") ) {
            System.out.print("Dime otro dato a sumar: ");
            respuesta = sc.nextLine();
            if ( ! respuesta.equals("") ) {
                n = Integer.parseInt(respuesta);
                suma += n;
                cantidad ++;

                if (n > maximo) {
                    maximo = n;
                } 
                if (n < minimo) {
                    minimo = n;
                }
            }            
        }
        
        
        System.out.println("La media es: " + (double) suma / cantidad);
        System.out.println("El maximo es: " + maximo);
        System.out.println("El minimo es: " + minimo);
    }
}

