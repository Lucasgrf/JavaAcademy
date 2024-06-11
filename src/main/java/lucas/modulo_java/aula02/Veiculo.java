package lucas.modulo_java.aula02;

public class Veiculo {
    public int numeroRodas;
    public String tipoPropulsao;

    @Override
    public String toString() {
        return "Veiculo{" +
                "numeroRodas=" + numeroRodas +
                ", tipoPropulsao='" + tipoPropulsao + '\'' +
                '}';
    }
}
