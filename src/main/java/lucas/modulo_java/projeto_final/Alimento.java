package lucas.modulo_java.projeto_final;

public class Alimento extends ProdutoBase {
    private String dataValidade;

    public Alimento() {
    }

    public Alimento(String nome, double preco, int quantidade, String dataValidade) {
        super(nome, preco, quantidade);
        this.dataValidade = dataValidade;
    }

    public String getDataValidade() {
        return dataValidade;
    }

    public void setDataValidade(String dataValidade) {
        this.dataValidade = dataValidade;
    }


    public String exibirDetalhes() {
        String s = "";
        s += super.toString();
        s += "\nData de validade: " + dataValidade;
        return s;
    }

    public String getTipo() {
        return getClass().getSimpleName();
    }
}
