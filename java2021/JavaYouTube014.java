// Nombre de un mes, con array

import java.util.Scanner;

public class JavaYouTube014 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        String[] nombresMeses = { "enero", "febrero", "marzo", "abril", 
            "mayo", "junio", "julio", "agosto", "septiembre",
            "octubre", "noviembre", "diciembre" };
        
        System.out.print("Dime el numero de mes (de 1 a 12): ");
        int mes = sc.nextInt();
        if (mes >=1 && mes <= 12)
            System.out.println( nombresMeses[mes-1] );
        else
            System.out.println("No es un mes valido");
    }
}

