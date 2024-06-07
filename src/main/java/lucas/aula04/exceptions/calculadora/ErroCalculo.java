package lucas.aula04.exceptions.calculadora;

public class ErroCalculo extends Exception {
    public ErroCalculo(int a, int b, String msg) {
        super(msg);
        System.out.println("Erro calculo: " + msg);
    }
}
