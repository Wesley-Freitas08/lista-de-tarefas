import java.util.Scanner;

public class Fibonacci {  
    public static void main(String args[]) {
  Scanner scanner = new Scanner(System.in);
  
      
        System.out.print("Informe quantos termos da sequência de Fibonacci deseja ver: ");
        int n = scanner.nextInt();

        int primeiro = 0, segundo = 1;

        System.out.println("Sequência de Fibonacci com " + n + " termos:");

        for (int i = 0; i < n; i++) {
            System.out.print(primeiro + " ");

            int proximo = primeiro + segundo;
            primeiro = segundo;
            segundo = proximo;
        }

        System.out.println();
  
    }
}

  
  
  
  
  
  
