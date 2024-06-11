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

    public void setGarantiaMeses(int garantiaMeses) {
        this.garantiaMeses = garantiaMeses;
    }

    public String exibirDetalhes() {
        String s = "";
        s += super.toString();
        s += "\nGarantia meses: " + garantiaMeses;
        return s;
    }

    public String getTipo() {
        return getClass().getSimpleName();
    }
}
