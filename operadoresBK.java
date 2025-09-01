import java.util.Scanner;

public class operadoresBK {
    public static void main(String[] args) {
        
    Scanner scanner = new Scanner(System.in);
    
    System.out.println("Calculadora Bhaskara");
    System.out.println("----------------------");
    
    System.out.println("Digite o valor de a:");
    double a = scanner.nextDouble();
    
    System.out.println("Digite o valor de b:");
     double b = scanner.nextDouble(); 
    
   System.out.println("Digite o valor de c:");
     double c = scanner.nextDouble();  
    
     double delta =(b*b) - (4.0 * a *c);
    
    double x1 = (-b + Math.sqrt(delta)) / (2 * a);
    double x2 = (-b - Math.sqrt(delta)) / (2 * a);
    
   System.out.printf("Raizes da equação: x1 = %.2f e x2 = %.2f", x1, x2);
   
           
   
    
    
    
    
    
    
    
    }
}