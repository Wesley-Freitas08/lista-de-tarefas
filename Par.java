import java.util.Scanner;
public class Par {
    public static void main(String args[]) {
       Scanner scanner = new Scanner(System.in);
       
       System.out.print("Digite um numero inteiro:");
       int numero = scanner.nextInt();
       
       if (numero % 2 == 0) {
           System.out.print("O numero é par");
       } else{ 
           System.out.print("O numero é impar");
     
       }
      scanner.close();
       
    }
}
