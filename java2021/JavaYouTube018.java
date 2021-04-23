// Iniciales

import java.util.Scanner;

public class JavaYouTube018 {
    
    public static void main (String[] args) {
        
        String texto = " Miguel  de Cervantes";
        
        texto = texto.toUpperCase().trim().replace("  ", " ");
        
        String resultado1 = "" + texto.charAt(0);
        for (int i = 1; i < texto.length(); i++) {
            if (texto.charAt(i-1) == ' ')
                resultado1 += texto.charAt(i);
        }
        System.out.println(resultado1);
        
        String resultado2 = "";
        String[] fragmentos = texto.split(" ");
        for (String fragmento : fragmentos) {
            resultado2 += fragmento.charAt(0);
        }
        System.out.println(resultado2);
        
        
    }
}

