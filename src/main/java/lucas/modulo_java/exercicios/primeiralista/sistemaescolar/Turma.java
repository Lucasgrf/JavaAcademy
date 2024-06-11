package lucas.modulo_java.exercicios.primeiralista.sistemaescolar;

import java.util.ArrayList;

public class Turma {
    private ArrayList<Aluno> aluno;
    private String nomeTurma, codigo;

    public Turma(String nomeTurma, String codigo) {
        aluno = new ArrayList<>();
        this.nomeTurma = nomeTurma;
        this.codigo = codigo;
    }

    public String getNomeTurma() {
        return nomeTurma;
    }

    public void setNomeTurma(String nomeTurma) {
        this.nomeTurma = nomeTurma;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public void setAluno(ArrayList<Aluno> aluno) {
        this.aluno = aluno;
    }

    public void adicionarAluno(Aluno aluno) {
        this.aluno.add(aluno);
    }

    public void listarAlunos() {
        if (aluno.isEmpty()) {
            System.out.println("Nenhum aluno matriculado nesta turma.");
        } else {
            System.out.println("Alunos na turma " + nomeTurma + " Código #" + codigo + ":");
            for (Aluno aluno : aluno) {
                System.out.println(aluno);
            }
            System.out.println();
        }
    }
}
