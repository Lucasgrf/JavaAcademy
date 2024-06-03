package exercicios.sistemaimposto;

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
        valorImposto = salario * aliquota;
    }

    public void imprimir(){
        System.out.println("Nome: " + pessoa.getNome());
        System.out.println("Salário: R$ " + String.format("%.2f", pessoa.getSalario()));
        System.out.println("Faixa de IR: " + faixaIR);
        System.out.println("Valor total do imposto: R$ " + String.format("%.2f", valorImposto));
    }


}
