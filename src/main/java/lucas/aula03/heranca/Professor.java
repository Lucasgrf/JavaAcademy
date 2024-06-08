package lucas.aula03.heranca;

public class Professor extends Pessoa {
    private double salario;

    public Professor(String nome, int idade, double salario) {
        super(nome, idade);
        this.salario = salario;
    }

    public void apresentarPessoa() {
        super.apresentarPessoa();
        System.out.print("Salario: " + salario + "\n");
    }
}
