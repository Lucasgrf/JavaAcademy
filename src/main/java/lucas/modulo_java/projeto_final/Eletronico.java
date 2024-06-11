package lucas.modulo_java.projeto_final;

public class Eletronico extends ProdutoBase {
    private int garantiaMeses;

    public Eletronico() {
    }

    public Eletronico(String nome, double preco, int quantidade, int garantiaMeses) {
        super(nome, preco, quantidade);
        this.garantiaMeses = garantiaMeses;
    }

    public int getGarantiaMeses() {
        return garantiaMeses;
    }

    public String exibirDetalhes() {
        return String.format("Nome: %s, Preço: %.2f, Garantia: %d meses, Quantidade: %d",
                getNome(), getPreco(), getGarantiaMeses(), getQuantidade());
    }

    public String getTipo() {
        return "Eletrônico";
    }
}
