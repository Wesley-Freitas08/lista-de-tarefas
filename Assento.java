
public class Assento {
 
 //Atributos   
 private int fileira;
 private int numero;
 private char status; //Para reprensentar 'L' ou 'x'
    
  //Métodos   
   
 public Assento(int fileira, int numero){
     this.fileira = fileira;
     this.numero = numero;
     this.status = 'L'; // inicializa o assento livre já.
 }
 
  // Ocupa o assento, Alterando seu status para 'X'.
 public void ocupar(){
     this.status = 'X';
 }
 
 //Libera o assento, alterando seu status para 'L'.
 public void liberar() {
     this.status = 'L';
 }
 
 //Verifica se o assento está livre.
 public boolean estaLivre(){
     return this.status == 'L';
 }

 //Retorna o status atual do assento.
 public char getStatus(){
     return this.status;
   } 
}
