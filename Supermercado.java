import java.util.Scanner;
public class Supermercado {
    public static void main(String args[]) {
   Scanner scanner = new Scanner(System.in);
        
        System.out.println("digite o  codigo do produto (de 1 a 5):");
        int produto = scanner.nextInt();
        
        switch (produto) {
            
            case 1:
              System.out.println("Maçã - R$ 2,30/un");  
              break;
              
            case 2:
             System.out.println("Arroz 1kg - R$ 5,80");  
             break;
             case 3:
                 
             System.out.println("Leite - R$ 4,50/L");
             break;
             
             case 4:
             System.out.println("Pão Francês - R$ 0,50/un");
             break;
             
             case 5:
             System.out.println("Carne 1kg - R$ 35,00");
             break;
             
             default:
               System.out.println("Código de produto inválido");
              break;
        }
       
    }
}
