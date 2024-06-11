package lucas.modulo_java.projeto_final;

public abstract class ProdutoBase implements Produto {
    private String nome;
    private double preco;
    private int quantidade;
    private int item;

    public ProdutoBase() {
    }

    public ProdutoBase(String nome, double preco, int quantidade) {
        item++;
        this.item = item;
        this.nome = nome;
        this.preco = preco;
        this.quantidade = quantidade;
    }

    @Override
    public String getTipo() {
        return "";
    }

    @Override
    public String getNome() {
        return nome;
    }

    @Override
    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public double getPreco() {
        return preco;
    }

    @Override
    public void setPreco(double preco) {
        this.preco = preco;
    }

    @Override
    public int getQuantidade() {
        return quantidade;
    }

    @Override
    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public int getItem() {
        return item;
    }


    public double getSubTotal() {
        return preco * quantidade;
    }

    public abstract String exibirDetalhes();

    {

    }

    @Override
    public String toString() {
        String s = "";
        s += "Item: " + item + "\n";
        s += "Quantidade: " + quantidade + "\n";
        s += "Nome: " + nome + "\n";
        s += "Preco: " + preco + "\n";
        return s;
    }
}
