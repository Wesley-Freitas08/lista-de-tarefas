
public class AnalisePopularidade {
    public static void main(String args[]) {
       int[] like_posts = {100, 150, 200, 180, 220, 300, 250, 280, 210};
        
      int[] variacao_likes = new int[like_posts.length - 1];  
      
      for (int i = 0; i < variacao_likes.length; i++) {
          variacao_likes[i] = like_posts[i+ 1 ] -  like_posts[i];
      }
      
      int maiorAumento = variacao_likes[0];
      int indicePicoEngajamento = 0 ;
       
       for (int i = 1; i < variacao_likes.length; i++) { 
       if (variacao_likes[i] > maiorAumento) {
           maiorAumento = variacao_likes[i];
          indicePicoEngajamento = i + 1;
       }
       }
          int somaLikes = 0;
          for (int likes: like_posts) {
              somaLikes += likes;   
          }
          double mediaLikes = (double) somaLikes/ like_posts.length;
          
         int postsAcimaDaMedia = 0;
         for (int likes : like_posts){
            if (likes > mediaLikes) {
                postsAcimaDaMedia++;
            }
         }
       System.out.println("O índice do post com maior pico de engajamento é: " + indicePicoEngajamento);
System.out.println("A quantidade de posts acima da média é: " + postsAcimaDaMedia);

      
     
    }    
}
