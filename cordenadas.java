import java.util.Scanner;

public class cordenadas {
    public static void main(String args[]) {
       Scanner scanner = new Scanner(System.in);
       
    System.out.println("Digite o valor de x1:");
    double x1 = scanner.nextDouble();
    
    System.out.println("Digite o valor de y1:");
     double y1 = scanner.nextDouble(); 
    
   System.out.println("Digite o valor de x2:");
     double x2 = scanner.nextDouble();  
       
   System.out.println("Digite o valor de y2:");
     double y2 = scanner.nextDouble();  
         
   double distancia = Math.sqrt(Math.pow(x2 - x1,2)+ Math.pow(y2 - y1,2));
   
   System.out.printf("A distância entre o ponto A e B é: %.2f\n", distancia);
 
   scanner.close();      
    }
}
