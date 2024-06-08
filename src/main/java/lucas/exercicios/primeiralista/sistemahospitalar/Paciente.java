package lucas.exercicios.primeiralista.sistemahospitalar;

public class Paciente {
    private String nome;
    private double peso, altura;

    public Paciente(String nome, double peso, double altura) {
        this.nome = nome;
        this.peso = peso;
        this.altura = altura;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    private double calcularImc() {
        double imc = peso / (altura * altura);
        return imc;
    }

    @Override
    public String toString() {
        return "Paciente{" +
                "nome='" + nome + '\'' +
                ", peso=" + peso +
                ", altura=" + altura +
                '}';
    }

    public String diagnostico() {
        String diagnostico = "";
        if (calcularImc() < 16) {
            diagnostico = "Baixo peso, muito grave = IMC menor que 16kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        } else if (calcularImc() > 16 && calcularImc() < 16.99) {
            diagnostico = "Baixo peso, grave = IMC entre 16kg/m² e 16,99kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        } else if (calcularImc() > 17 && calcularImc() < 18.49) {
            diagnostico = "Baixo peso = IMC entre 17kg/m² e 18,49kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        } else if (calcularImc() > 18.50 && calcularImc() < 24.99) {
            diagnostico = "Peso normal = IMC entre 18,50kg/m² e 24,99kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        } else if (calcularImc() > 25 && calcularImc() < 29.99) {
            diagnostico = "Sobrepeso = IMC entre 25kg/m² e 29.99kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        } else if (calcularImc() > 30 && calcularImc() < 34.99) {
            diagnostico = "Obesidade grau I = IMC entre 30kg/m² e 34,99kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        } else if (calcularImc() > 35 && calcularImc() < 39.99) {
            diagnostico = "Obesidade grau II = IMC entre 35kg/m² e 39,99kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        } else if (calcularImc() >= 40) {
            diagnostico = "Obesidade grau III(obesidade mórbida) = IMC maior que 40kg/m²";
            return "O paciente " + getNome() + " é " + diagnostico;
        }

        return "IMC: " + calcularImc();

    }
}
