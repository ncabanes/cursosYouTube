// Divisores de un numero

import java.util.Scanner;

public class JavaYouTube012 {
    
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Buscar divisores de... ");
        int n = sc.nextInt();
        
        for (int i = 1; i <= n; i++)
        {
            if (n % i == 0)
                System.out.print( i + " ");
        }
    }
}

