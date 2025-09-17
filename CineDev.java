import java.util.InputMismatchException;
import java.util.Scanner;

public class CineDev {

    public static void main(String[] args) {
        // Cria uma instância da SalaDeCinema.
        SalaDeCinema sala = new SalaDeCinema();
        Scanner scanner = new Scanner(System.in);
        int opcao;

        do {
            exibirMenuPrincipal();
            opcao = lerOpcao(scanner);

            switch (opcao) {
                case 1:
                    sala.exibirMapa();
                    break;
                case 2:
                    comprarIngresso(sala, scanner);
                    break;
                case 3:
                    cancelarCompra(sala, scanner);
                    break;
                case 4:
                    sala.exibirRelatorio();
                    break;
                case 5:
                    System.out.println("Saindo do sistema. Obrigado por usar o CineDev!");
                    break;
                default:
                    System.out.println("Opção inválida. Tente novamente.");
            }
        } while (opcao != 5);

        scanner.close();
    }

   
     // Exibe o menu principal do sistema.
     
    public static void exibirMenuPrincipal() {
        System.out.println("\n--- CineDev - Menu Principal ---");
        System.out.println("1. Exibir Mapa de Assentos");
        System.out.println("2. Comprar Ingresso");
        System.out.println("3. Cancelar Compra de Ingresso");
        System.out.println("4. Exibir Relatório de Ocupação");
        System.out.println("5. Sair");
        System.out.print("Escolha uma opção: ");
    }
   
    public static int lerOpcao(Scanner scanner) {
        try {
            return scanner.nextInt();
        } catch (InputMismatchException e) {
            System.out.println("Entrada inválida. Por favor, digite um número.");
            scanner.next(); // Limpa o buffer do scanner
            return -1;
        }
    }

    
     // Coleta os dados para a compra de ingresso e chama o método correspondente na sala.
     
    public static void comprarIngresso(SalaDeCinema sala, Scanner scanner) {
        try {
            System.out.print("Digite a fileira (1-10): ");
            int fileira = scanner.nextInt();
            System.out.print("Digite o assento (1-20): ");
            int assento = scanner.nextInt();
            sala.comprarIngresso(fileira, assento);
        } catch (InputMismatchException e) {
            System.out.println("Entrada inválida. Por favor, digite números inteiros.");
            scanner.next(); // Limpa o buffer do scanner
        }
    }

    
     // Coleta os dados para o cancelamento de compra e chama o método na sala.
    
    public static void cancelarCompra(SalaDeCinema sala, Scanner scanner) {
        try {
            System.out.print("Digite a fileira (1-10): ");
            int fileira = scanner.nextInt();
            System.out.print("Digite o assento (1-20): ");
            int assento = scanner.nextInt();
            sala.cancelarCompra(fileira, assento);
        } catch (InputMismatchException e) {
            System.out.println("Entrada inválida. Por favor, digite números inteiros.");
            scanner.next(); // Limpa o buffer do scanner
        }
    }
}