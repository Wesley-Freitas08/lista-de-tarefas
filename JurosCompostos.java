import java.util.Scanner;
public class JurosCompostos {

    public static void main(String args[]) {
    Scanner scanner = new Scanner(System.in);
        
       System.out.println("Digite o capital inicial(R$):");
       double capital = scanner.nextDouble();
       
       System.out.println("Digite a taxa de juros anual(%):");
       double taxa = scanner.nextDouble();
       
       System.out.println("Digite o tempo de investimento(em anos):");
       int tempo = scanner.nextInt();
        
       if (tempo > 5) {
           taxa += 1.0;
       } 
           double taxaDecimal = taxa / 100;
           
           double montante = capital * Math.pow(taxaDecimal,tempo);
           
           System.out.printf("Montante Final: R$ %.2f\n", montante);
       
        scanner.close();
    }
}
