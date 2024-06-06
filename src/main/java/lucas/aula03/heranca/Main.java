package lucas.aula03.heranca;

public class Main {
    public static void main(String[] args) {
        Pessoa p1 = new Pessoa("Lucas", 22);
        Aluno aluno = new Aluno("Rafael", 23, 23972);
        Professor professor = new Professor("Selk", 20, 5893.93);

        p1.apresentarPessoa();
        aluno.apresentarPessoa();
        professor.apresentarPessoa();
    }
}
