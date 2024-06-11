package lucas.modulo_java.projeto_final;

public class Alimento extends ProdutoBase {
    private String dataValidade;

    public Alimento() {
    }

    public Alimento(String nome, double preco, int quantidade, String dataValidade) {
        super(nome, preco, quantidade);
        this.dataValidade = dataValidade;
    }

    public String exibirDetalhes() {
        return String.format("Nome: %s, Preço: %.2f, Data de Validade: %s, Quantidade: %d",
                getNome(), getPreco(), dataValidade, getQuantidade());
    }

    public String getTipo() {
        return "Alimento";
    }
}
