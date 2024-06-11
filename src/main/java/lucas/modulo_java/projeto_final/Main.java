package lucas.modulo_java.projeto_final;


import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int opcao = 6;
        while (opcao != 6) {
            opcao = obterOpcaoMenu(sc);
            switch (opcao) {
                case 1:
                    System.out.println("Adicionando itens ao carrinho: ");
                    System.out.println("Digite o nome do produto: ");
                    String nomeProduto = sc.nextLine();
                    System.out.println("Digite a quantidade do produto: ");
                    int quantidadeProduto = sc.nextInt();
                    sc.nextLine();
                    System.out.println("Digite o preço do produto: ");
                    double precoProduto = sc.nextDouble();
                    sc.nextLine();
                    System.out.println("Digite o tipo do produto: ");
                    String tipoProduto = sc.nextLine();

                    if (tipoProduto.equalsIgnoreCase("Eletronico")) {
                        System.out.println("Digite o tempo de garantia em meses: ");
                        int tempoGarantia = sc.nextInt();
                        sc.nextLine();
                        Eletronico eletronico = new Eletronico();
                        eletronico.setNome(nomeProduto);
                        eletronico.setQuantidade(quantidadeProduto);
                        eletronico.setPreco(precoProduto);
                        eletronico.setGarantiaMeses(tempoGarantia);

                    }

                case 2:
                case 3:
                case 4:
                case 5:
                default:
                    System.out.println("Entrada inválida");
                    break;
            }
        }

    }

    public static int obterOpcaoMenu(Scanner sc) {

        boolean flag = false;
        int opcao = 6;
        while (!flag) {
            System.out.println("\t----------MENU----------\t ");
            System.out.println("1: Adicionar itens ao carrinho");
            System.out.println("2: Listar itens do carrinho");
            System.out.println("3: Remover itens no carrinho");
            System.out.println("4: Gravar itens do carrinho num bloco de texto");
            System.out.println("5: Apagar carrinho.");
            System.out.println("6: Sair.");

            try {
                String entrada = sc.nextLine();
                opcao = Integer.parseInt(entrada);

                if (opcao == 1 || opcao == 2 || opcao == 3 || opcao == 4 || opcao == 5 || opcao == 6) {
                    flag = true;
                } else {
                    throw new Exception("Entrada inválida");
                }
            } catch (Exception e) {
                System.out.println("Entrada inválida! Digite novamente.\n");
            }
        }
        return opcao;
    }

}
