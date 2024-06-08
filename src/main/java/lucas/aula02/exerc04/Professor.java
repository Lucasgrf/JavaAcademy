package lucas.aula02.exerc04;

public class Professor extends Pessoa {
    private String matricula;
    private double salario;

    public Professor(String nome, int rg, String matricula, double salario) {
        super(nome, rg);
        this.matricula = matricula;
        this.salario = salario;
        apresentarDados();
    }

    public void apresentarDados() {
        System.out.println("Matricula: " + matricula);
        System.out.println("Salario: " + salario);
    }
}
