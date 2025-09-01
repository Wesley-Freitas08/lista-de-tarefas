
public class SomaPares {
    
    public static void main(String args[]) {
        
     int soma = 0;
     
     for (int i= 1; i <= 100; i++) {
         
    if (i % 2 == 0) {
        soma = soma + i;
    }    
     } 
       System.out.println("A soma de todos os numeros pares DE 1 a 100 é:" + soma);
  
    }
}
