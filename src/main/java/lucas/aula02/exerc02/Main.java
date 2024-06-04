package lucas.aula02.exerc02;

public class Main {
    public static void main(String[] args) {
        Pessoa p1 = new Pessoa();
        p1.nome = "Joao";
        p1.idade = 20;
        p1.tipo = "Homo Sapien";
        p1.falar();
        p1.andar();
        System.out.println(p1.toString());
    }
}
