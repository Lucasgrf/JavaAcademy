package lucas.aula02.exerc04;

public class Pessoa {
    protected String nome;
    protected int rg;

    public Pessoa(String nome, int rg) {
        this.nome = nome;
        this.rg = rg;
        apresentarDados();
    }

    private void apresentarDados() {
        System.out.println("Nome: " + nome);
        System.out.println("RG: " + rg);
    }
}
