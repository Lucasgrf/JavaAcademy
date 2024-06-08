package lucas.aula03.heranca;

public class Pessoa {
    String nome;
    int idade;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public void apresentarPessoa() {
        System.out.print("Nome: " + nome + "; Idade: " + idade + " ");
    }
}
