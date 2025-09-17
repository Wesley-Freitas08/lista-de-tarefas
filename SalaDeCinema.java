
public class SalaDeCinema {

//Atributos para o Tamanho da sala.
private Assento[][] assentos; //Uma matriz de objetos Assento
private final int FILEIRAS = 10;
private final int ASSENTOS_POR_FILEIRA = 20;

//Construtor da SalaDeCinema. inicializa a matriz de assentos pedido.
public SalaDeCinema(){
    this.assentos = new Assento[FILEIRAS][ASSENTOS_POR_FILEIRA];
   // Popula a matriz com novos objetos Assento
      for (int i = 0; i < FILEIRAS; i++) {
       for (int j = 0; j < ASSENTOS_POR_FILEIRA; j++) {
    // Instancia um novo objeto Assento para cada posição
          this.assentos[i][j] = new Assento(i + 1, j + 1);
            }
        }
    } 
    
    public void exibirMapa(){
     System.out.println("\n--- Mapa de Assentos ---");
        // Imprime os números dos assentos (colunas)
        System.out.print("Assentos:  ");
        for (int j = 1; j <= ASSENTOS_POR_FILEIRA; j++) {
            System.out.printf("%-3d", j);
        }
        System.out.println();   
    
      // Imprime o mapa da sala usando o status dos objetos Assento
        for (int i = 0; i < FILEIRAS; i++) {
            System.out.printf("Fileira %2d: ", (i + 1));
            for (int j = 0; j < ASSENTOS_POR_FILEIRA; j++) {
                System.out.print("[" + this.assentos[i][j].getStatus() + "]");
            }
            System.out.println();
        }
    }

   public boolean comprarIngresso(int fileira, int numeroOAssento){
    //Validação dos dadod de entrada 
    if (fileira < 1 || fileira > FILEIRAS || numeroOAssento < 1 || numeroOAssento > ASSENTOS_POR_FILEIRA) {
 System.out.println("Erro: Fileira ou assento inválido.");
 return false;
    }
  
  Assento assentoEscolhido = this.assentos[fileira - 1][numeroOAssento - 1];

 // Verifica se o assento está ocupado para cancelar
        if (!assentoEscolhido.estaLivre()) {
            assentoEscolhido.liberar();
            System.out.println("Compra cancelada. Assento " + fileira + "-" + numeroOAssento + " agora está livre.");
            return true;
        } else {
            System.out.println("Este assento já está livre. Não há compra para cancelar.");
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

    void cancelarCompra(int fileira, int assento) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}

    

