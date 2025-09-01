import java.util.Scanner;

public class Bonus {

    public static void main(String args[]) {
       Scanner scanner = new Scanner(System.in);
       
       System.out.println("Digite qual seu cargo:");
        String cargo = scanner.nextLine().toLowerCase();
        
        System.out.println(" Digite seu tempo de serviço (em anos):");
        double tempo = scanner.nextDouble();
        
        System.out.println(" Digite o salario do funcionario (R$)):");
        double salario = scanner.nextDouble();
        
        double bonus = 0.0; 
                
           switch (cargo){
               
               case"gerente":
               case"gerentes":
            if (tempo > 2) {
                bonus = salario * 0.10;
            } else { 
                bonus = salario * 0.05;
            }
              break;
              
               case "cordenadador":
               case "cordenadadores":   
                   if (tempo > 1){
                bonus = salario * 0.08;
                   }else {
                       bonus = salario * 0.03;
                   }
                   break;
                   
               case "analista":    
               case "analistas":
               default:
                   bonus = salario * 0.05;
                   break;
           }    
        
        System.out.printf("O valor do bônus é: R$ %.2f\n", bonus); 
        
    }
    
}
