package lucas.modulo_java.projeto_final;

public class Roupa extends ProdutoBase{
    private String tamanho,cor;

    public Roupa() {
    }

    public Roupa(String nome, double preco, int quantidade, String tamanho, String cor) {
        super(nome, preco, quantidade);
        this.tamanho = tamanho;
        this.cor = cor;
    }

    public String getTamanho() {
        return tamanho;
    }

    public String getCor() {
        return cor;
    }

    public String exibirDetalhes() {
        return String.format("Nome: %s, Preço: %.2f, Tamanho: %s, Cor: %s, Quantidade: %d",
                getNome(), getPreco(), getTamanho(), getCor(), getQuantidade());
    }

    public String getTipo(){
        return "Roupa";
    }
}
