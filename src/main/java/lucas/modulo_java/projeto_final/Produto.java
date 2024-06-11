package lucas.modulo_java.projeto_final;

public interface Produto {
    String getTipo();

    String getNome();

    double getPreco();

    void setNome(String nome);

    void setPreco(double preco);

    void setQuantidade(int quatidade);

    int getQuantidade();

    String exibirDetalhes();


}
