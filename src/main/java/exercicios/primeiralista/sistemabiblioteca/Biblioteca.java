package exercicios.primeiralista.sistemabiblioteca;

import java.util.ArrayList;

public class Biblioteca {
    private ArrayList<Livro> livros;

    public Biblioteca() {
        livros = new ArrayList<>();
    }

    public void adicionarLivros(Livro livro){
        livros.add(livro);
    }

    public void listarLivros() {
        System.out.println("Livros na estante da biblioteca:  ");
        for (Livro livro : livros) {
            System.out.println(livro);
        }
    }

}
