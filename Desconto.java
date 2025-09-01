import java.util.Scanner;
public class Desconto {

    public static void main(String args[]) {
   Scanner scanner = new Scanner(System.in);
   
   
   System.out.print("Digite o Valor da sua compra:");
    int valor = scanner.nextInt();
    
    if(valor >200){
     System.out.println("direito a um desconto.");  
    } 
    scanner.close();
    }
    }