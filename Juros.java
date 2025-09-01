import java.util.Scanner;

public class Juros {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Escolha o tipo de juros (1 para Simples, 2 para Composto): ");
        int tipo = scanner.nextInt();

        System.out.println("Digite o capital inicial: ");
        double capital = scanner.nextDouble();

        System.out.println("Digite a taxa de juros (em % ao período): ");
        double taxa = scanner.nextDouble();

        System.out.println("Digite o tempo (em anos): ");
        double tempo = scanner.nextDouble();

        double montante;

        switch (tipo) {
            case 1: 
                montante = capital * (1 + (taxa / 100) * tempo);
                System.out.printf("Montante com Juros Simples: R$ %.2f%n", montante);
                break;

            case 2: 
                montante = capital * Math.pow(1 + (taxa / 100), tempo);
                System.out.printf("Montante com Juros Compostos: R$ %.2f%n", montante);
                break;

            default:
                System.out.println("Opção inválida! Escolha 1 para Simples ou 2 para Composto.");
                break;
        }

        scanner.close();
    }
}
