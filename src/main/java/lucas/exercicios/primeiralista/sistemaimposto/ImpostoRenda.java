package lucas.exercicios.primeiralista.sistemaimposto;

public class ImpostoRenda{
    private Pessoa pessoa;
    private double valorImposto;
    private int faixaIR;

    public ImpostoRenda(Pessoa pessoa) {
        this.pessoa = pessoa;
        calcular();
    }

    public void calcular(){
        double salario = pessoa.getSalario();
        faixaIR = FaixaImpostoRenda.calcularFaixaIR(salario);
        double aliquota = FaixaImpostoRenda.obterAliquota(faixaIR);
        if(faixaIR == 1){
            valorImposto = 0;
        }else if(faixaIR == 2){
            valorImposto = (salario * aliquota) - 158.40;
        }else if(faixaIR == 3){
            valorImposto = (salario * aliquota) - 370.40;
        }else if(faixaIR == 4){
            valorImposto = (salario * aliquota) - 651.73;
        }else if(faixaIR == 5){
            valorImposto = (salario * aliquota) - 884.96;
        }
    }

    public void imprimir(){
        System.out.println("Nome: " + pessoa.getNome());
        System.out.println("Salário: R$ " + String.format("%.2f", pessoa.getSalario()));
        System.out.println("Faixa de IR: " + faixaIR);
        System.out.println("Valor total do imposto: R$ " + String.format("%.2f", valorImposto));
    }


}
