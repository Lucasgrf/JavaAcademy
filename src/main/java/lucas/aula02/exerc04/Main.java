package lucas.aula02.exerc04;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String nome, matricula;
        int rg;
        double salario;

        boolean flag = false;
        while (!flag) {
            System.out.println("Escolha o tipo de matrícula: Professor: Prof; Aluno: Al; Pessoa: Pe;");
            String opcao = scan.nextLine();
            switch (opcao.toLowerCase()) {
                case "prof":
                    System.out.println("Digite o nome do professor: ");
                    nome = scan.nextLine();
                    System.out.println("Digite o rg do " + nome);
                    rg = scan.nextInt();
                    scan.nextLine();//Limpar scanner.
                    System.out.println("Digite a matricula do " + nome);
                    matricula = scan.nextLine();
                    System.out.println("Digite o salario do " + nome);
                    salario = scan.nextDouble();
                    scan.nextLine();

                    Professor prof = new Professor(nome, rg, matricula, salario);
                    System.out.println("Deseja continuar adicionando outras matrículas? S/N");
                    if (scan.nextLine().equalsIgnoreCase("N")) {
                        System.out.println("Finalizando programa...");
                        flag = true;
                    }
                    break;

                case "al":
                    System.out.println("Digite o nome do aluno: ");
                    nome = scan.nextLine();
                    System.out.println("Digite o rg do " + nome);
                    rg = scan.nextInt();
                    scan.nextLine();
                    System.out.println("Digite a matricula do " + nome);
                    matricula = scan.nextLine();

                    Aluno aluno = new Aluno(nome, rg, matricula);
                    System.out.println("Deseja continuar adicionando outras matrículas? S/N");
                    if (scan.nextLine().equalsIgnoreCase("N")) {
                        System.out.println("Finalizando programa...");
                        flag = true;
                    }
                    break;

                case "pe":
                    System.out.println("Digite o nome da pessoa: ");
                    nome = scan.nextLine();
                    System.out.println("Digite o rg do " + nome);
                    rg = scan.nextInt();
                    scan.nextLine();

                    Pessoa pessoa = new Pessoa(nome, rg);

                    System.out.println("Deseja continuar adicionando outras matrículas? S/N");
                    if (scan.nextLine().equalsIgnoreCase("N")) {
                        System.out.println("Finalizando programa...");
                        flag = true;
                    }
                    break;

                default:
                    System.out.println("Opção inválida!");
                    flag = true;
                    break;
            }
        }
    }
}
