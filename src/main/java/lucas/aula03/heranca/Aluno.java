package lucas.aula03.heranca;

public class Aluno extends Pessoa {
    int matricula;

    public Aluno(String nome, int idade, int matricula) {
        super(nome, idade);
        this.matricula = matricula;
    }

    public void apresentarPessoa() {
        super.apresentarPessoa();
        System.out.print("Matricula: " + matricula + "\n");
    }
}
