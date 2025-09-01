import java.util.Scanner;
public class Triangulos {
    public static void main(String args[]) {
       Scanner scanner = new Scanner(System.in);
       
        System.out.println("Digite o comprimento do lado 1:");
       double a = scanner.nextDouble();
       
        System.out.println("Digite o comprimento do lado 2:");
       double b = scanner.nextDouble();
       
        System.out.println("Digite o comprimento do lado 3:");
       double c = scanner.nextDouble();
       
       if ( a + b > c && a + c > b && b + c > a){
        if (a == b && b == c){ 
            System.out.println("Triângulo Equilátero");
        }else if (a == b || a == c || b == c ) {
            System.out.println("Triângulo Isósceles");
        }else {
            System.out.println("Triângulo Escaleno");
        }
       } else {
           System.out.println("Os Valores fornecidos nao formam um Triangulo");
       }
      scanner.close();
    }
}

