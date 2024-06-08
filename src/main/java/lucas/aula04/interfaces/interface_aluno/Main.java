package lucas.aula04.interfaces.interface_aluno;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        //Cria uma lista de alunos e a inicializa
        List<Aluno> alunos = new ArrayList<Aluno>();
        alunos.add(new Aluno("Lucas", 1000, 7));
        alunos.add(new Aluno("John", 1001, 8));
        alunos.add(new Aluno("Peter", 1100, 5));
        alunos.add(new Aluno("Mary", 1200, 9));
        alunos.add(new Aluno("June", 999, 10));
        alunos.add(new Aluno("Paul", 1500, 3));
        alunos.add(new Aluno("Jack", 1600, 4));

        //Apresenta a lista sem ordenação por nota na tela
        System.out.println("\nLista de alunos desordenada\n");
        alunos.forEach(aluno -> System.out.println(aluno));

        //Ordena a lista por nota

        //alunos.sort((Aluno a1, Aluno a2) -> a1.compareTo(a2));
        alunos.sort(Aluno::compareTo);
        System.out.println("\nLista de alunos ordenanda por nota\n");
        alunos.forEach(aluno -> System.out.println(aluno));

        //Ordena a lista por matrícula
        alunos.sort((Aluno a1, Aluno a2) -> a1.compareMatricula(a2));
        //alunos.sort(Aluno::compareMatricula);
        System.out.println("\nLista de alunos ordenanda por matricula\n");
        alunos.forEach(aluno -> System.out.println(aluno));

    }
}