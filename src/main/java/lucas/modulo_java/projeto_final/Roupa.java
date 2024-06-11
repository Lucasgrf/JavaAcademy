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

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String exibirDetalhes() {
        String s = "";
        s += super.toString();
        s += "\nTamanho: " + tamanho;
        s += "\nCor: " + cor;
        return s;
    }

    public String getTipo(){
        return getClass().getSimpleName();
    }
}
