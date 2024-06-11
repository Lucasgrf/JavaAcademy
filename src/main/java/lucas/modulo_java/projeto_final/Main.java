package lucas.modulo_java.projeto_final;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        CarrinhoDeCompras carrinho = new CarrinhoDeCompras();
        int opcao = 1;
        while (opcao != 6) {
            opcao = obterOpcaoMenu(sc);
            switch (opcao) {
                case 0:
                    opcao = obterOpcaoMenu(sc);
                    break;
                case 1:
                    adicionarItemAoCarrinho(sc, carrinho);
                    break;
                case 2:
                    listarItensDoCarrinho(carrinho);
                    break;
                case 3:
                    removerItemDoCarrinho(sc, carrinho);
                    break;
                case 4:
                    gravarItensDoCarrinho(carrinho, sc);
                    break;
                case 5:
                    carrinho.exportarListaProdutos();
                    System.out.println("Removendo todos os itens do carrinho...");
                    break;
                case 6:
                    System.out.println("Encerrando programa...");
                    break;
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
            System.out.println("|------------MENU------------|");
            System.out.println("0: Para voltar a esse menu");
            System.out.println("1: Adicionar itens ao carrinho");
            System.out.println("2: Listar itens do carrinho");
            System.out.println("3: Remover itens no carrinho");
            System.out.println("4: Gravar itens do carrinho num bloco de texto");
            System.out.println("5: Apagar carrinho.");
            System.out.println("6: Fechar programa.");
            System.out.println("|----------------------------|");

            try {
                String entrada = sc.nextLine();
                opcao = Integer.parseInt(entrada);

                if (opcao >= 0 && opcao <= 6) {
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

    public static void adicionarItemAoCarrinho(Scanner sc, CarrinhoDeCompras carrinho) {
        System.out.println("|----------------------------|");
        System.out.println("Adicionando itens ao carrinho");
        System.out.println("|----------------------------|");

        try {
            System.out.println("Digite o nome do produto: ");
            String nomeProduto = sc.nextLine();

            System.out.println("Digite a quantidade do produto: ");
            int quantidadeProduto = Integer.parseInt(sc.nextLine());

            System.out.println("Digite o preço do produto: ");
            double precoProduto = Double.parseDouble(sc.nextLine());

            System.out.println("Digite o tipo do produto: | Eletronico, Alimento, Roupa | ");
            String tipoProduto = sc.nextLine();

            Produto produto;
            if (tipoProduto.equalsIgnoreCase("Eletronico")) {
                System.out.println("Digite o tempo de garantia em meses: ");
                int tempoGarantia = Integer.parseInt(sc.nextLine());
                produto = new Eletronico(nomeProduto, precoProduto, quantidadeProduto, tempoGarantia);
            } else if (tipoProduto.equalsIgnoreCase("Alimento")) {
                System.out.println("Digite a data de validade do alimento: ");
                String dataValidade = sc.nextLine();
                produto = new Alimento(nomeProduto, precoProduto, quantidadeProduto, dataValidade);
            } else if (tipoProduto.equalsIgnoreCase("Roupa")) {
                System.out.println("Digite o tamanho da roupa: ");
                String tamanho = sc.nextLine();
                System.out.println("Digite a cor da roupa: ");
                String cor = sc.nextLine();
                produto = new Roupa(nomeProduto, precoProduto, quantidadeProduto, tamanho, cor);
            } else {
                throw new IllegalArgumentException("Tipo de produto inválido");
            }

            carrinho.adicionarItem(produto);
            System.out.println("Produto adicionado ao carrinho.");
        } catch (Exception e) {
            System.out.println("Erro ao adicionar item: " + e.getMessage());
        }
    }

    public static void removerItemDoCarrinho(Scanner sc, CarrinhoDeCompras carrinho) {
        try {
            System.out.println("|----------------------------|");
            System.out.println("Removendo itens ao carrinho");
            System.out.println("|----------------------------|");

            System.out.println("Digite o nome do produto a ser removido: ");
            String nomeProduto = sc.nextLine();

            boolean itemRemovido = carrinho.removerItemPorNome(nomeProduto);

            if (itemRemovido) {
                System.out.println("Produto removido do carrinho.");
            } else {
                System.out.println("Produto não encontrado no carrinho.");
            }
        } catch (Exception e) {
            System.out.println("Erro ao remover item: " + e.getMessage());
        }
    }

    public static void listarItensDoCarrinho(CarrinhoDeCompras carrinho) {
        if (carrinho != null && !carrinho.getItens().isEmpty()) {
            System.out.println("Mostrando itens no carrinho...");
            carrinho.listarItens();
        } else {
            System.out.println("Carrinho vazio.");
        }
    }

    public static void gravarItensDoCarrinho(CarrinhoDeCompras carrinho, Scanner sc) {
        try {
            System.out.println("Digite o nome do arquivo: ");
            String nomeArquivo = sc.nextLine();
            carrinho.gerarArquivoTexto(nomeArquivo);
            System.out.println("Itens gravados no arquivo com sucesso.");
        } catch (Exception e) {
            System.out.println("Erro ao gravar itens no arquivo: " + e.getMessage());
        }
    }

}
