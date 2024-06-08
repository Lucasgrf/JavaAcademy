package lucas.aula02.exerc03;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        boolean flag = false;
        while (!flag) {
            System.out.println("Digite o nome do funcionário: ");
            String nome = scan.nextLine();
            System.out.println("Digite o telefone do " + nome + ": ");
            String telefone = scan.nextLine();
            System.out.println("Digite a idade do " + nome + ": ");
            int idade = scan.nextInt();
            scan.nextLine(); //Limpar o scanner.
            System.out.println("Digite o setor do " + nome + ": ");
            String setor = scan.nextLine();
            System.out.println("Digite o cargo do " + nome + ": ");
            String cargo = scan.nextLine();
            System.out.println("Digite a função do " + nome + ": ");
            String funcao = scan.nextLine();

            Funcionario funcionario = new Funcionario(nome, telefone, idade, setor, cargo, funcao);
            System.out.println(funcionario);

            System.out.println("Deseja cadastrar mais algum funcionário? S/N");
            if (scan.nextLine().equalsIgnoreCase("N")) {
                System.out.println("Fechando programa...");
                flag = true;
            }
        }

    }
}
