package lucas.aula01.exerc02;

public class Disciplina {
    public static void main(String[] args) {
        Professor prof = new Professor();
        Laboratorio lab = new Laboratorio();

        prof.nome = "Lucas Schlestein";
        lab.local = "Sala 02";

        System.out.println("Nome do professor: " + prof.nome + "; Local: " + lab.local);
    }
}
