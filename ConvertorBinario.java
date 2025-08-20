import java.util.Scanner;
public class ConvertorBinario {
    public static void main(String args[]) {
     Scanner scanner = new Scanner(System.in);
        
      System.out.println("Digite um numero para converter:");
      int numero = scanner.nextInt();
     String resultado = ""; 
     
      while ( numero > 0){
          int resto = numero % 2 ;
          resultado = resto + resultado;
          numero = numero / 2;
      } 
        System.out.println("Numero em Binario:" + resultado );
        
     scanner.close();
    }
}
