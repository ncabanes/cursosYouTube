// Invertir una cadena

import java.util.Scanner;

public class JavaYouTube017 {
    
    public static void main (String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String texto = sc.nextLine();
        
        String respuesta1 = "";
        for (int i = texto.length()-1; i >= 0; i--)
        {
            respuesta1 += texto.charAt(i);
        }
        System.out.println(respuesta1);
        
        String respuesta2 = "";
        for (int i = 0; i < texto.length(); i++)
        {
            respuesta2 = texto.charAt(i) + respuesta2;
        }
        System.out.println(respuesta2);
        
        String respuesta3 = "";
        for (char letra : texto.toCharArray() )
        {
            respuesta3 = letra + respuesta3;
        }
        System.out.println(respuesta3);
        
    }
}

