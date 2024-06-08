package lucas.aula02.exerc02;

public class Pessoa extends SerHumano {
    @Override
    public String toString() {
        return "Pessoa{" +
                "nome='" + nome + '\'' +
                ", idade=" + idade +
                ", tipo='" + tipo + '\'' +
                '}';
    }
}
