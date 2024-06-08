package lucas.aula01.exerc03;

public class LocadoraVeiculos {
    public static void main(String[] args) {
        Carro carro = new Carro();
        Carro carro2 = new Carro("Fiat", "Mobi");

        carro.configurarDados("Volkswagem", "Gol");
        carro.exibirDados();
        carro2.exibirDados();
    }
}
