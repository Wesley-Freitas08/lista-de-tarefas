import java.util.Scanner;
public class usuario {

    public static void main(String args[]) {
       Scanner scanner = new Scanner(System.in);
   
   
   System.out.print("Digite senha de acesso:");
        String senha = scanner.nextLine();
    
    if(senha.equals("java2024")){
     System.out.println("Acesso Permitido.");  
      } else {
       System.out.println("Acesso negado");  
    } 
    scanner.close();
    } 
    }

