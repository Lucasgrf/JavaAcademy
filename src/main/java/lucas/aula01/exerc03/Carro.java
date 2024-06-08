package lucas.aula01.exerc03;

public class Carro {
    private String fabricante, modelo;

    public Carro() {
    }

    public Carro(String fabricante, String modelo) {
        this.fabricante = fabricante;
        this.modelo = modelo;
    }

    public void configurarDados(String fabricanteDeCarro, String modeloDoCarro) {
        fabricante = fabricanteDeCarro;
        modelo = modeloDoCarro;
    }

    public void exibirDados() {
        System.out.println("Dados do carro: " + fabricante + ", " + modelo);
    }
}
