package lucas.aula02;

public class Carro extends Veiculo {
    public String modelo, cor, fabricante;

    @Override
    public String toString() {
        return "Carro{" +
                "modelo='" + modelo + '\'' +
                ", cor='" + cor + '\'' +
                ", fabricante='" + fabricante + '\'' +
                ", numeroRodas=" + numeroRodas +
                ", tipoPropulsao='" + tipoPropulsao + '\'' +
                '}';
    }
}
