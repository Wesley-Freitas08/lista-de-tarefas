import java.util.Scanner;
public class Maioridade {

    public static void main(String args[]) {
   Scanner scanner = new Scanner(System.in);
   
   
   System.out.print("Digite sua Idade:");
    int idade = scanner.nextInt();
    
    if(idade >=18){
     System.out.println("Maior de Idade");  
    } else {
       System.out.println("Menor de Idade");  
    }
    scanner.close();
    }
}
