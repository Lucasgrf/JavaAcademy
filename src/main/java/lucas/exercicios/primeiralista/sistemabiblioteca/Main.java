package lucas.exercicios.primeiralista.sistemabiblioteca;

public class Main {
    public static void main(String[] args) {
        Biblioteca biblioteca = new Biblioteca();

        biblioteca.adicionarLivros(new Livro("Harry Potter e a Pedra Filosofal", "J. K. Rowling", 1997));
        biblioteca.adicionarLivros(new Livro("Harry Potter e a Câmara Secreta", "J. K. Rowling", 1998));
        biblioteca.adicionarLivros(new Livro("Harry Potter e o Prisioneiro de Azkaban", "J. K. Rowling", 1999));

        biblioteca.listarLivros();


    }
}
