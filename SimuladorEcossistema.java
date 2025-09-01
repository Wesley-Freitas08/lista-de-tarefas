
public class SimuladorEcossistema {
    public static void main(String args[]) {
     
        int[] coelhos = new int[12];
        int[] raposas = new int[12];
        
        coelhos[0] = 1000;
        raposas[0] = 20;
        
        for (int i = 0; i < 11; i++) {
            double coelhosAtuais = coelhos[i];
            double raposasAtuais = raposas[i];
            
         double coelhosProximoMes = coelhosAtuais + (0.1 * coelhosAtuais) - (0.01 * coelhosAtuais * raposasAtuais);
         double raposasProximoMes = raposasAtuais - (0.1 * raposasAtuais) + (0.002 * coelhosAtuais * raposasAtuais);

         coelhos[i + 1] = (int) Math.max(coelhosProximoMes, 0);
         raposas[i + 1] = (int) Math.max(raposasProximoMes, 0);

        }
        
        int maxCoelhos  = coelhos[0];
        int mesPicoCoelhos = 0;
        int maxRaposas = raposas[0];
       int mesPicoRaposas = 0;
        
        for (int i = 1; i < 12; i++) { 
        if (coelhos[i] > maxCoelhos){
          maxCoelhos = coelhos[i];
         mesPicoCoelhos  = i;
        }
        
        if (raposas[i] > maxRaposas) {
            maxRaposas = raposas[i];
            mesPicoRaposas = i;
           } 
        }
         System.out.println("Mês de pico populacional dos coelhos: " + mesPicoCoelhos + " (População: " + (int)coelhos[mesPicoCoelhos] + ")");
        System.out.println("Mês de pico populacional das raposas: " + mesPicoRaposas + " (População: " + (int)raposas[mesPicoRaposas] + ")");
        
    }
}
