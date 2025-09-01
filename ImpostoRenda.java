import java.util.Scanner;

public class ImpostoRenda {
    
    public static void main(String args[]) {
       Scanner scanner = new Scanner(System.in);
       
       System.out.println("Digite o Salario: R$ ");
       double salario =scanner.nextDouble();
       
       double imposto ;
       
       if (salario <= 2112.00){
           imposto = 0.0;
       } else if  (salario <= 2826.65){
           imposto = salario * 0.075;
       } else if (salario <= 3751.05) {
           imposto = salario * 0.15;
       } else if (salario <= 4664.68) {
           imposto = salario * 0.225;
        } else {
           imposto = salario * 0.275;
       }
       
       if (imposto == 0.0) {
        System.out.println("Isento de imposto de renda");
       } else {
             System.out.printf("imposto a ser pago: R$ %.2f%n",imposto);
       }
      scanner.close();
    }
}
