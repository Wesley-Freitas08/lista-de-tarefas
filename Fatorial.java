import java.util.Scanner;
public class Fatorial {

    public static void main(String args[]) {
   Scanner scanner = new Scanner(System.in);
   
    System.out.println("Digite um  numero inteiro para calcular o fatorial:");
    int numero = scanner.nextInt();
    
    long fatorial = 1;
    if (numero < 0 ){
       System.out.println("Erro: fatorial nao definido para numero negativo");  
    } else {
        for (int i = numero; i >= 1; i--){
        fatorial = fatorial * i;
    }
     System.out.println("o fatorial de" + numero + " ! = " + fatorial);
        
    } 
    }
}
