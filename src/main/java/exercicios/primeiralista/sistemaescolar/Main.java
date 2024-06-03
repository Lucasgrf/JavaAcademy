package exercicios.primeiralista.sistemaescolar;

public class Main {
    public static void main(String[] args) {
        Turma turma = new Turma("Português", "PORT02");
        Turma turma2 = new Turma("Português", "PORT04");

        Aluno aluno1 = new Aluno("José", "19235",20);
        Aluno aluno2 = new Aluno("Matheus", "23213", 18);
        Aluno aluno3 = new Aluno("Marcos", "38823", 39);
        Aluno aluno4 = new Aluno("Lucas", "13242", 50);
        Aluno aluno5 = new Aluno("Nicolas", "49583", 15);

        turma.adicionarAluno(aluno1);
        turma.adicionarAluno(aluno3);
        turma2.adicionarAluno(aluno2);
        turma2.adicionarAluno(aluno4);
        turma2.adicionarAluno(aluno5);

        turma.listarAlunos();
        turma2.listarAlunos();
    }
}
