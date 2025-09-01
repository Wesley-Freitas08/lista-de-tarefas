import java.util.Scanner;
public class ConversorTemp {

    public static void main(String args[]) {
     Scanner scanner = new Scanner(System.in);
     
    System.out.println("===== Menu de Conversão de Unidades =====");
        System.out.println("1 - Converter Celsius para Fahrenheit");
        System.out.println("2 - Converter Quilômetros para Milhas");
        System.out.println("3 - Converter Litros para Galões");
        System.out.print("Escolha uma opção (1 a 3): ");
        int opcao = scanner.nextInt();

        double valor, resultado;

         switch (opcao) {
             case 1:
              System.out.println("Digite a temperatura em Celsius:");
              valor = scanner.nextDouble();
              resultado = (valor * 9/5) + 32;
               System.out.printf("Resultado: %.2f °F\n", resultado);
                break;
                
              case 2:
              System.out.println("Digite a distancia em quilometros:");
              valor = scanner.nextDouble();
              resultado = valor * 0.621371;
               System.out.printf("Resultado: %.2f milhas\n", resultado);
                break;  
                
                 case 3:
              System.out.println("Digite o volume em litros:");
              valor = scanner.nextDouble();
              resultado = valor * 0.264172;
               System.out.printf("Resultado: %.2f galões\n", resultado);
                break;  
                
                 default:
                     System.out.println("opção invalida.");
                break;     
         }
    }
}
