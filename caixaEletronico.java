import java.util.Scanner;
public class caixaEletronico {
    public static void main(String args[]) {
      Scanner scanner = new Scanner(System.in); 
        
    double saldo = 1500; 
      
    while (true) {
      System.out.println("- CAIXA ELETRONICO -");
      System.out.println("1 - Verificar Saldo:");
      System.out.println("2 - Sacar:");
      System.out.println("3 - Depositar:");
      System.out.println("4 - Sair:");
      System.out.println("-------------------");
      System.out.println("Digite o numero da opção:");
      
      int opcao = scanner.nextInt();
      
      switch(opcao){
              case 1: 
                  System.out.println("- Seu saldo atual -");
                  System.out.printf("Seu saldo atual é: R$ %.2f\n", saldo);
                  break;
              case 2:
                 System.out.println("- SAQUE -");
                  System.out.print("digite o valor que deseja sacar:");
                  double valorSaque = scanner.nextDouble();
                  
                  if (valorSaque <=0){
                      System.out.println("Valor invalido.");
                  } else if (valorSaque > saldo){
                  System.out.println("Valor de saque insuficiente .");
                  } else {
                      saldo = saldo - valorSaque;
                     System.out.printf("Saque de R$ %.2f realizado com sucesso.\n",valorSaque); 
                  }
                  break;
                  
              case 3:
                  System.out.println("- Depositar");
                  System.out.print("digite o valor que deseja depositar"); 
                  double valorDeposito = scanner.nextDouble();
                  if (valorDeposito <= 0) {
                        System.out.println("Valor inválido.");
                    } else {
                        saldo += valorDeposito;
                        System.out.printf("Depósito de R$ %.2f realizado com sucesso.\n", valorDeposito);
                  }
                        break;
          
        
              case 4: 
              System.out.println("Encerrando o sistema. Obrigado!");
              scanner.close();
               return; 
              
              default:
                 System.out.println("Opcao invalida. Tente novamente.");  
        }
      }
   }
}