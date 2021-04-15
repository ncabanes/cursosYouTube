// Nombre de un mes, con switch

import java.util.Scanner;

public class JavaYouTube008 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Dime el numero de mes (de 1 a 12): ");
        int mes = sc.nextInt();
        
        if (mes == 1)
            System.out.println("enero");
        else if (mes == 2)
            System.out.println("febrero");
        else if (mes == 3)
            System.out.println("marzo");
        else if (mes == 4)
            System.out.println("abril");
        else if (mes == 5)
            System.out.println("mayo");
        else if (mes == 6)
            System.out.println("junio");
        else if (mes == 7)
            System.out.println("julio");
        else if (mes == 8)
            System.out.println("agosto");
        else if (mes == 9)
            System.out.println("septiembre");
        else if (mes == 10)
            System.out.println("octubre");
        else if (mes == 11)
            System.out.println("noviembre");
        else if (mes == 12)
            System.out.println("diciembre");
        else
            System.out.println("mes incorrecto");
            
        switch(mes) {
            case 1: System.out.println("enero"); break;
            case 2: System.out.println("febrero"); break;
            case 3: System.out.println("marzo"); break;
            case 4: System.out.println("abril"); break;
            case 5: System.out.println("mayo"); break;
            case 6: System.out.println("junio"); break;
            case 7: System.out.println("julio"); break;
            case 8: System.out.println("agosto"); break;
            case 9: System.out.println("septiembre"); break;
            case 10: System.out.println("octubre"); break;
            case 11: System.out.println("noviembre"); break;
            case 12: System.out.println("diciembre"); break;
            default: System.out.println("mes incorrecto"); break;
        }
        
    }
}

