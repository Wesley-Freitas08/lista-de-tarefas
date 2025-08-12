import java.util.Scanner;

public class ConversorRomano {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite um número entre 1 e 100: ");
        int numero = scanner.nextInt();
       
        if (numero < 1 || numero > 100) {
            System.out.println("Número fora do intervalo permitido.");
            return;
        }

        String romano = "";
        
        if (numero == 100) {
            romano = "C";
        } else {
            int dezenas = numero / 10;
            int unidades = numero % 10;

            switch (dezenas) {
                case 9: romano += "XC"; break;
                case 8: romano += "LXXX"; break;
                case 7: romano += "LXX"; break;
                case 6: romano += "LX"; break;
                case 5: romano += "L"; break;
                case 4: romano += "XL"; break;
                case 3: romano += "XXX"; break;
                case 2: romano += "XX"; break;
                case 1: romano += "X"; break;
                default: break; // 0 dezenas
            }
           
            switch (unidades) {
                case 9: romano += "IX"; break;
                case 8: romano += "VIII"; break;
                case 7: romano += "VII"; break;
                case 6: romano += "VI"; break;
                case 5: romano += "V"; break;
                case 4: romano += "IV"; break;
                case 3: romano += "III"; break;
                case 2: romano += "II"; break;
                case 1: romano += "I"; break;
                default: break; 
            }
        }

        System.out.println("Número romano: " + romano);
    }
}
