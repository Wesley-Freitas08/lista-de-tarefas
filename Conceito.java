import java.util.Scanner;
public class Conceito {
    
    public static void main(String args[]) {
     Scanner scanner = new Scanner(System.in);
     
    System.out.println("Digite a nota do Aluno (0 a 10): ");
    double nota = scanner.nextDouble();
    
    if (nota >= 9 && nota <= 10 ) {
         System.out.println("Conceito A ");  
    }else if (nota >= 7 && nota < 9){
        System.out.println("Conceito B ");
    } else if (nota >= 5 && nota < 7) {
     System.out.println("Conceito C ");
     } else if (nota >= 0 && nota < 5){
     System.out.println("Conceito D ");
     } else {
    System.out.println("Nota invalida! Digite entre 0 a 10 ");
    }
     scanner.close();
    }
}
