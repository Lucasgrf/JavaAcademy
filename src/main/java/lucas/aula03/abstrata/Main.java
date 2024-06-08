package lucas.aula03.abstrata;

public class Main {
    public static void main(String[] args) {
        Gato gato = new Gato();
        gato.fazerBarulho("Miau");
        gato.andar(gato.getClass().getSimpleName());
    }
}
