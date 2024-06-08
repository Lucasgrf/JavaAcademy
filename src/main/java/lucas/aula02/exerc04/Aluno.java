package lucas.aula02.exerc04;

public class Aluno extends Pessoa {
    private String matricula;

    public Aluno(String nome, int rg, String matricula) {
        super(nome, rg);
        this.matricula = matricula;
        apresentarDados();
    }

    public void apresentarDados() {
        System.out.println("Matricula: " + matricula);
    }
}
