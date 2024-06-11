package lucas.modulo_java.projeto_final;

import java.util.ArrayList;
import java.util.List;

public class CarrinhoDeCompras {
    private List<Produto> itens;

    public CarrinhoDeCompras() {
        itens = new ArrayList<Produto>();
    }

    public void adicionarItem(Produto produto) {
        itens.add(produto);
    }

    public void removerItem(Produto produto) {
        itens.remove(produto);
    }

    public void listarItens() {
        for (Produto produto : itens) {
            System.out.print(produto);
            System.out.println(" - " + produto.getQuantidade());
        }
    }

    public List<Produto> exportarListaProdutos() {
        itens.removeAll(itens);
        return itens;
    }

    public double calcularSubTotal() {
        return itens.stream().mapToDouble(Produto::getQuantidade).sum();
    }


}
