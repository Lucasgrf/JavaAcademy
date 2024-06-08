package lucas.aula01.exerc01;

public class TestePessoa {
    public static void main(String[] args) {
        Pessoa pessoa1 = new Pessoa();
        Pessoa pessoa2 = new Pessoa();
        Pessoa pessoa3 = new Pessoa();

        pessoa1.idade = 23;
        pessoa2.idade = 18;
        pessoa3.idade = 42;

        pessoa1.nome = "José";
        pessoa2.nome = "Pedro";
        pessoa3.nome = "Maria";

        System.out.println("Nome: " + pessoa1.nome + "; Idade: " + pessoa1.idade);
        System.out.println("Nome: " + pessoa2.nome + "; Idade: " + pessoa2.idade);
        System.out.println("Nome: " + pessoa3.nome + "; Idade: " + pessoa3.idade);
    }
}
