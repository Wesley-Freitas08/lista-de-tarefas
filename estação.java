import java.util.Scanner;

public class estação {
  
    public static void main(String args[]) {
      Scanner scanner = new Scanner(System.in);
       
   System.out.println("Digite o Numero do mês (1 a 12):");
   int mes = scanner.nextInt();
   
   String estação;
   estação= switch(mes);{
           case 12, 1, 2 -> estação = "Verão";
           case 3, 4, 5 -> estação = "Outono";
           case 6, 7, 8 -> estação = "Inverno";
           case 9, 10, 11 -> estação = "Primavera";
         default -> "Mês inválido";    
               
               
    }
}
