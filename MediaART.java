import java.util.Scanner;
public class MediaART {

    public static void main(String args[]) {
      Scanner scanner = new Scanner(System.in);
      
      System.out.println("Escreva quantas notas você deseja calcular:");
   int QuantidadeDaNotas = scanner.nextInt();
      
     double somaNotas = 0.0;
      
      for (int i= 1; i <= QuantidadeDaNotas; i++) {
      System.out.println("Digite a nota nº" + i + ":");
     double nota = scanner.nextDouble();
     somaNotas = somaNotas + nota;
    }
     double media = somaNotas / QuantidadeDaNotas;
     
     System.out.println("-----------------");
     System.out.println("A Média das " + QuantidadeDaNotas + "nota é:" + media);
     
    }
}
