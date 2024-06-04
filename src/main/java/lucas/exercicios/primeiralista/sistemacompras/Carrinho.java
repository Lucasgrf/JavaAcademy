package exercicios.primeiralista.sistemacompras;


import java.util.ArrayList;

public class Carrinho {
    private ArrayList<Produto> produtos;

    public Carrinho() {
        produtos = new ArrayList<>();
    }

    public void adicionarProduto(Produto produto) {
        produtos.add(produto);
    }

    public void listarProdutos() {
        if(produtos.isEmpty()) {
            System.out.println("Carrinho vazio.");
        }else{
            System.out.println("Carrinho: ");
            for (Produto produto : produtos) {
                System.out.println(produto);
            }
        }
    }

    private double calcularValorTotal(){
        double total = 0;
        for (Produto produto : produtos) {
            total += produto.getPreco() * produto.getQuantidade();
        }
        return total;
    }

    public void exibirValorTotal(){
        System.out.println("Valor total do carrinho: R$ " + String.format("%.2f", calcularValorTotal()) + "\n");
    }
}
