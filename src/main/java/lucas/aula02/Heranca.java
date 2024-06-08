package lucas.aula02;

public class Heranca {
    public static void main(String[] args) {
        Carro carro = new Carro();
        carro.numeroRodas = 4;
        carro.modelo = "Fusca";
        carro.cor = "Prata";
        carro.fabricante = "Volkswagem";
        carro.tipoPropulsao = "Térmica";
        System.out.println(carro);

        Bicicleta bicicleta = new Bicicleta();
        bicicleta.aro = 29;
        bicicleta.numeroRodas = 2;
        bicicleta.marcha = 21;
        bicicleta.modalidade = "Passeio";
        bicicleta.tipoPropulsao = "Manual";
        bicicleta.marca = "Bicicleta";

        System.out.println(bicicleta);

    }

}
