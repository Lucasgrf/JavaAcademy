package lucas.aula04.interfaces.interface_aluno;

public class Aluno implements Comparable<Aluno> {
    private final String nome;
    private final int matricula;
    private final int nota;

    public Aluno(String nome, int matricula, int nota) {
        this.nome = nome;
        this.matricula = matricula;
        this.nota = nota;
    }

    @Override
    public int compareTo(Aluno outro) {
        return Integer.compare(this.nota, outro.nota);
    }

    public int compareMatricula(Aluno outro) {
        return Integer.compare(this.matricula, outro.matricula);
    }

    @Override
    public String toString() {
        return "Aluno{" +
                "nota=" + nota +
                ", matricula=" + matricula +
                ", nome='" + nome + '\'' +
                '}';
    }
}
