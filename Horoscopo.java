import java.util.Scanner;

public class Horoscopo{
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o dia do nascimento (1-31): ");
        int dia = scanner.nextInt();

        System.out.print("Digite o mês do nascimento (1-12): ");
        int mes = scanner.nextInt();

        String signo = "";

        switch (mes) {
            case 1: 
                if (dia >= 20 && dia <= 31) {
                    signo = "Aquário";
                } else if (dia >= 1 && dia <= 19) {
                    signo = "Capricórnio";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 2: 
                if (dia >= 1 && dia <= 18) {
                    signo = "Aquário";
                } else if (dia >= 19 && dia <= 29) {  
                    signo = "Peixes";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 3: 
                if (dia >= 1 && dia <= 20) {
                    signo = "Peixes";
                } else if (dia >= 21 && dia <= 31) {
                    signo = "Áries";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 4: 
                if (dia >= 1 && dia <= 19) {
                    signo = "Áries";
                } else if (dia >= 20 && dia <= 30) {
                    signo = "Touro";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 5: 
                if (dia >= 1 && dia <= 20) {
                    signo = "Touro";
                } else if (dia >= 21 && dia <= 31) {
                    signo = "Gêmeos";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 6: 
                if (dia >= 1 && dia <= 20) {
                    signo = "Gêmeos";
                } else if (dia >= 21 && dia <= 30) {
                    signo = "Câncer";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 7:
                if (dia >= 1 && dia <= 22) {
                    signo = "Câncer";
                } else if (dia >= 23 && dia <= 31) {
                    signo = "Leão";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 8:
                if (dia >= 1 && dia <= 22) {
                    signo = "Leão";
                } else if (dia >= 23 && dia <= 31) {
                    signo = "Virgem";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 9: 
                if (dia >= 1 && dia <= 22) {
                    signo = "Virgem";
                } else if (dia >= 23 && dia <= 30) {
                    signo = "Libra";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 10: 
                if (dia >= 1 && dia <= 22) {
                    signo = "Libra";
                } else if (dia >= 23 && dia <= 31) {
                    signo = "Escorpião";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 11: 
                if (dia >= 1 && dia <= 21) {
                    signo = "Escorpião";
                } else if (dia >= 22 && dia <= 30) {
                    signo = "Sagitário";
                } else {
                    signo = "Data inválida";
                }
                break;

            case 12: 
                if (dia >= 1 && dia <= 21) {
                    signo = "Sagitário";
                } else if (dia >= 22 && dia <= 31) {
                    signo = "Capricórnio";
                } else {
                    signo = "Data inválida";
                }
                break;

            default:
                signo = "Mês inválido";
                break;
        }

        System.out.println("Seu signo é: " + signo);
    }
}
