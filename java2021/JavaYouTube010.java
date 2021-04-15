// Sumar una cantidad indeterminada de números

import java.util.Scanner;

public class JavaYouTube010 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        int suma = 0;
        String respuesta;
        
        do {
            System.out.print("Dime un dato a sumar: ");
            respuesta = sc.nextLine();
            if ( ! respuesta.equals("") ) {
                suma += Integer.parseInt(respuesta);
            }
        }
        while ( ! respuesta.equals("") );
        
        System.out.print("La suma es: " + suma);
    }
}

