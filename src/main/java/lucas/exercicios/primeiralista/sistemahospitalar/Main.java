package lucas.exercicios.primeiralista.sistemahospitalar;

public class Main {
    public static void main(String[] args) {
        Paciente paciente = new Paciente("Lucas", 55.3, 1.69);
        Paciente paciente2 = new Paciente("Wesley", 120, 1.60);
        Paciente paciente3 = new Paciente("Matheus", 83.2, 1.93);

        System.out.println(paciente.diagnostico());
        System.out.println(paciente2.diagnostico());
        System.out.println(paciente3.diagnostico());

    }


}
