
import java.util.Scanner;
public class Pirâmide {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a altura da pirâmide: ");
        int altura = scanner.nextInt();
        
        for (int i = 1; i <= altura; i++) {
          
            for (int j = 1; j <= altura - i; j++) {
                System.out.print(" ");
            }

            for (int k = 1; k <= (2 * i - 1); k++) {
                System.out.print("*");
            }

            System.out.println();
        }
    }
}
