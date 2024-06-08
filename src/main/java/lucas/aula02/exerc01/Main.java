package lucas.aula02.exerc01;

import java.util.Scanner;

public class Main extends Usuario {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String nome, email, telefone;

        System.out.println("Digite seu nome: ");
        nome = scan.nextLine();
        System.out.println("Digite seu email: ");
        email = scan.nextLine();
        System.out.println("Digite seu telefone: ");
        telefone = scan.nextLine();

        Usuario usuario = new Usuario();
        System.out.println(usuario.exibirInfo(nome, email, telefone));
    }
}
