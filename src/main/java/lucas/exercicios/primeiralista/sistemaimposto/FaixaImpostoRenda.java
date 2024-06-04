package exercicios.primeiralista.sistemaimposto;

public class FaixaImpostoRenda {
    public static int calcularFaixaIR(double salario){
        if(salario <= 2112){
            return 1;
        }else if(salario <= 2826.66){
            return 2;
        } else if (salario <= 3751.06) {
            return 3;
        }else if (salario <= 4664.68){
            return 4;
        }else{
            return 5;
        }
    }

    public static double obterAliquota(int faixa) {
        switch (faixa) {
            case 1:
                return 0.0;
            case 2:
                return 0.075;
            case 3:
                return 0.15;
            case 4:
                return 0.225;
            case 5:
                return 0.275;
            default:
                throw new IllegalArgumentException("Faixa de IR inválida: " + faixa); //Caso a faixa dê algum erro.
        }
    }
}
