public class SalaDeCinema {

//Atributos para o Tamanho da sala.
private Assentos[][] assentos; //Uma matriz de objetos Assento
private final int FILEIRAS = 10;
private final int ASSENTOS_POR_FILEIRA = 20;

//Construtor da SalaDeCinema. inicializa a matriz de assentos pedido.
public SalaDeCinema(){
    this.assentos = new Assentos[FILEIRAS][ASSENTOS_POR_FILEIRA];
   // Popula a matriz com novos objetos Assento
      for (int i = 0; i < FILEIRAS; i++) {
       for (int j = 0; j < ASSENTOS_POR_FILEIRA; j++) {
    // Instancia um novo objeto Assento para cada posição
          this.assentos[i][j] = new Assentos(i + 1, j + 1);
            }
        }
    } 
    
    public void exibirMapa() {
    final String RESET = "\u001B[0m";
    final String GREEN = "\u001B[32m";
    final String RED = "\u001B[31m";

    System.out.println("\n--- Mapa de Assentos ---");
    System.out.println("Legenda: " + GREEN + "[L] Livre" + RESET + " | " + RED + "[X] Ocupado" + RESET + "\n");

    // Cabeçalho alinhado
    System.out.print("           ");
    for (int j = 1; j <= ASSENTOS_POR_FILEIRA; j++) {
        System.out.printf("%4d", j);
    }
    System.out.println();

    for (int i = 0; i < FILEIRAS; i++) {
        System.out.printf("Fileira %2d:", i + 1);
        for (int j = 0; j < ASSENTOS_POR_FILEIRA; j++) {
            char status = assentos[i][j].getStatus();
            String cor = (status == 'L') ? GREEN : RED;

            System.out.print(" " + cor + "[" + status + "]" + RESET);
        }
        System.out.println();
    }
}




    public boolean comprarIngresso(int fileira, int numeroOAssento) {
    if (fileira < 1 || fileira > FILEIRAS || numeroOAssento < 1 || numeroOAssento > ASSENTOS_POR_FILEIRA) {
        System.out.println("Erro: Fileira ou assento inválido.");
        return false;
    }

    Assentos assentoEscolhido = this.assentos[fileira - 1][numeroOAssento - 1];

    if (assentoEscolhido.estaLivre()) {
        assentoEscolhido.ocupar();
        System.out.println("Ingresso comprado com sucesso para o assento " + fileira + "-" + numeroOAssento + ".");
        return true;
    } else {
        System.out.println("Erro: O assento já está ocupado.");
        return false;
    }
}

   public void exibirRelatorio() {
    int totalAssentos = FILEIRAS * ASSENTOS_POR_FILEIRA;
    int ocupados = 0;

    // Percorre a matriz para contar os assentos ocupados
    for (int i = 0; i < FILEIRAS; i++) {
        for (int j = 0; j < ASSENTOS_POR_FILEIRA; j++) {
            if (!this.assentos[i][j].estaLivre()) {
                ocupados++;
            }
        }
}
  
    int livres = totalAssentos - ocupados;
    double percentualOcupacao = (double) ocupados / totalAssentos * 100;

    System.out.println("\n--- Relatório de Ocupação ---");
    System.out.println("Total de assentos: " + totalAssentos);
    System.out.println("Assentos ocupados: " + ocupados);
    System.out.println("Assentos livres: " + livres);
    System.out.printf("Percentual de ocupação: %.2f%%\n", percentualOcupacao);}

    public void cancelarCompra(int fileira, int numeroOAssento) {
    if (fileira < 1 || fileira > FILEIRAS || numeroOAssento < 1 || numeroOAssento > ASSENTOS_POR_FILEIRA) {
        System.out.println("Erro: Fileira ou assento inválido.");
        return;
    }

    Assentos assento = this.assentos[fileira - 1][numeroOAssento - 1];

    if (!assento.estaLivre()) {
        assento.liberar();
        System.out.println("Compra cancelada. Assento " + fileira + "-" + numeroOAssento + " agora está livre.");
    } else {
        System.out.println("Este assento já está livre. Não há compra para cancelar.");
    }
 }
}   


