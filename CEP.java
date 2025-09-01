 import java.util.Scanner;
public class CEP {
    public static void main(String args[]) {
   Scanner scanner = new Scanner(System.in);
   
   System.out.println("Digite seu CEP:");
   String cep = scanner.nextLine();
   
    char primeiroDigito = cep.charAt(0);
   String regiao;
   double custoFrete;
   
   
   switch(primeiroDigito) {
       case '0':
       case '1':
       case '2':
       case '3':
        regiao = "Sudeste(SP, RJ, ES, MG:)";
         custoFrete = 15.00;
           break;
           
      case '4':
      case '5':
        regiao = "Nordeste (BA, SE, AL, PE, PB, RN, CE, PI)";
        custoFrete = 25.00;
           break;         
               
       case '6':
       case '7':
           regiao = "Norte (MA, PA, AP, AM, RR, AC, RO, TO)";
           custoFrete = 35.00;
           break;               
          
        case '8':
       case '9':
           regiao = "Sul/Centro-Oeste (PR, SC, RS, MS, MT, GO, DF)";
           custoFrete = 20.00;
           break;   
           
       default:
         System.out.println("CEP inválido.");
        return;
    }
   
    System.out.printf("Região: %s\nCusto do frete: R$ %.2f\n", regiao, custoFrete);
   }
}