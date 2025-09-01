import java.util.Scanner;
public class Votação {

    public static void main(String args[]) {
   Scanner scanner = new Scanner(System.in);
   
   
   System.out.print("Digite sua idade:");
    int idade = scanner.nextInt();
    
    if(idade >=16){
     System.out.println("Voce ja pode votar/");  
    } else {
       System.out.println("Voce ainda não pode votar/");  
    }
    scanner.close();
    }
}
