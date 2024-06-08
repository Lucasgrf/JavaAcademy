package lucas.aula02;

public class Bicicleta extends Veiculo {
    public String marca;
    public int marcha;
    public String modalidade;
    public int aro;

    @Override
    public String toString() {
        return "Bicicleta{" +
                "marca='" + marca + '\'' +
                ", marcha=" + marcha +
                ", modalidade='" + modalidade + '\'' +
                ", aro=" + aro +
                ", numeroRodas=" + numeroRodas +
                ", tipoPropulsao='" + tipoPropulsao + '\'' +
                '}';
    }
}
