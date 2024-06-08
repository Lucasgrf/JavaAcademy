package lucas.aula04.exceptions;

public class Main {
    public static void main(String[] args) {
        a(0);

    }

    public static void a(int i) {
        System.out.println("Iniciando a execução A");
        try {
            b(i);
        } catch (Exception e) {
            System.out.println("Ocorreu um erro " + e.getMessage());
            ;
        }
        System.out.println("Terminando a execução A");
    }

    public static void b(int i) throws Exception {
        System.out.println("Iniciando a execução B");
        if (i == 0) {
            throw new Exception("Lançando exceção em B");
        }
        System.out.println("Terminando a execução B");
    }
}
