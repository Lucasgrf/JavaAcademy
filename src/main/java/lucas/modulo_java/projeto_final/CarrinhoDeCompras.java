package lucas.modulo_java.projeto_final;

import java.io.PrintWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CarrinhoDeCompras {
    private final List<Produto> itens;

    public CarrinhoDeCompras() {
        itens = new ArrayList<>();
    }

    public List<Produto> getItens() {
        return itens;
    }


    public void adicionarItem(Produto produto) {
        itens.add(produto);
    }

    public boolean removerItemPorNome(String nome) {
        return itens.removeIf(item -> item.getNome().equalsIgnoreCase(nome));
    }


    public void listarItens() {
        for (Produto produto : itens) {
            System.out.println(produto.exibirDetalhes());
        }
    }

    public void exportarListaProdutos() {
        itens.removeAll(itens);
    }

    public double calcularTotal() {
        return itens.stream().mapToDouble(item -> item.getQuantidade() * item.getPreco()).sum();
    }

    public void gerarArquivoTexto(String nomeArquivo) {
        try (PrintWriter writer = new PrintWriter(nomeArquivo)) {
            writer.println("item:\t\tQtd:\t\tNome:\t\tPreço:\t\tSubTotal:");

            int itemNum = 1;

            for (Produto produto : itens) {
                double subTotal = produto.getQuantidade() * produto.getPreco();
                writer.printf("%d\t\t%d\t\t%s\t\t%.2f\t\t%.2f%n",
                        itemNum, produto.getQuantidade(), produto.getNome(), produto.getPreco(), subTotal);
                itemNum++;
            }
            double total = calcularTotal();

            writer.printf("Total: %.2f%n", total);

        } catch (IOException e) {
            System.err.println("Erro ao escrever no arquivo " + e.getMessage());
        }
    }
}

