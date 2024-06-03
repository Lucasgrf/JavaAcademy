package exercicios.sistemacompras;

public class Main {
    public static void main(String[] args) {

        Carrinho carrinho = new Carrinho();

        Produto produto1 = new Produto("Arroz", 10.50, 2);
        Produto produto2 = new Produto("Feijão", 8.30, 3);
        Produto produto3 = new Produto("Macarrão", 5.75, 1);

        carrinho.adicionarProduto(produto1);
        carrinho.listarProdutos();
        carrinho.exibirValorTotal();

        carrinho.adicionarProduto(produto2);
        carrinho.listarProdutos();
        carrinho.exibirValorTotal();

        carrinho.adicionarProduto(produto3);
        carrinho.listarProdutos();
        carrinho.exibirValorTotal();

    }
}
