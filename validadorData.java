import java.util.Scanner;
public class validadorData {

    public static void main(String args[]) {
   Scanner scanner = new Scanner(System.in);
       
   
   System.out.println("Digite um Dia:");
      int dia = scanner.nextInt();
   System.out.println("Digite um Mês:");
      int mes = scanner.nextInt();
   
   System.out.println("Digite um Ano:");
      int ano = scanner.nextInt();
   
    boolean dataValida = true;
    
   if (mes < 1 || mes >12){
       dataValida = false;
   } else {
       int diasNoMes;
       
       switch (mes){
         case 1: case 3: case 5: case 7: case 8: case 10: case 12: 
               diasNoMes= 31;
               break;
           
           case 4: case 6: case 9: case 11:
               diasNoMes = 30; 
               break;
               
           case 2:
               if ((ano % 4 == 0 && ano % 100 != 0)|| (ano % 400 == 0)) {
               diasNoMes = 29 ;
               }else { 
                   diasNoMes = 28;
               }
               break;
           default:
               diasNoMes = 0;
               break;
         }
             
       if (dia <1 || dia > diasNoMes){
           dataValida = false;
       }
   }
   
      if (dataValida){
          System.out.println("Data Válida");
      }else {
         System.out.println("Data inválida"); 
      } 
     scanner.close();
    }
}