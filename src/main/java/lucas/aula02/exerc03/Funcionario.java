package lucas.aula02.exerc03;

public class Funcionario extends Pessoa {
    private String setor, cargo, funcao;

    public Funcionario(String setor, String cargo, String funcao) {
        this.setor = setor;
        this.cargo = cargo;
        this.funcao = funcao;
    }

    public Funcionario(String nome, String telefone, int idade, String setor, String cargo, String funcao) {
        super(nome, telefone, idade);
        this.setor = setor;
        this.cargo = cargo;
        this.funcao = funcao;
    }

    @Override
    public String toString() {
        return "Funcionario: \n" + "Nome: " + nome
                + "; Telefone: " + telefone
                + "; Idade: " + idade
                + "; Setor: " + setor
                + "; Cargo: " + cargo
                + "; Função: " + funcao;
    }
}
