import java.util.Scanner;

public class calculadora {
    public static void main(String args[]) {
      Scanner scanner = new Scanner(System.in);
       
        System.out.println("Digite o Primeiro Numero:");
    double num1 = scanner.nextDouble();
    
    System.out.println("Digite o Segundo Numero:");
     double num2 = scanner.nextDouble(); 
    
   System.out.println("Digite a operação(+,-,*,/):");
    char operador  = scanner.next().charAt(0);  
       
  double resultado = 0;
  boolean operacaoValida = true;
  
  switch (operador){
      
      case '+':
      resultado = num1 + num2;
      System.out.println("Resultado:" + resultado); 
      break;
      case '-':
      resultado = num1 - num2;
      System.out.println("Resultado:" + resultado); 
      break;
      case '*':
       resultado =num1 * num2;
      System.out.println("Resultado:" + resultado);    
      break;
     case '/':
         if (num2 != 0){
       resultado = num1 / num2;
      System.out.println("Resultado:" + resultado);    
      break; 
     } else {
             System.out.println("Erro: divisão por zero!");
             operacaoValida = false;
             }
      break;
     default:
      System.out.println("Operador invalido!");
      break;
      }
   scanner.close();
    }         
  }
