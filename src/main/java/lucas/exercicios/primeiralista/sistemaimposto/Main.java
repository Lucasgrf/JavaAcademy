package lucas.exercicios.primeiralista.sistemaimposto;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String nome;
        double salario;

        boolean flag = false;
        while (!flag) {
            System.out.println("Digite seu nome: ");
            nome = scan.nextLine();
            System.out.println("Digite sua salario: ");
            salario = scan.nextDouble();
            scan.nextLine(); // essa linha é apenas para limpar o resquício do scan anterior.

            Pessoa pessoa = new Pessoa(nome, salario);
            ImpostoRenda impostoRenda = new ImpostoRenda(pessoa);
            impostoRenda.imprimir();

            System.out.println("Deseja ver o imposto de outra pessoa? S/N");
            String opcao = scan.nextLine();
            if (opcao.equalsIgnoreCase("N")) {
                System.out.println("Sistema finalizado com sucesso!");
                flag = true;
            }
        }


    }
}
