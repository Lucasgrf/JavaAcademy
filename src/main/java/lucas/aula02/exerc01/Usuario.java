package lucas.aula02.exerc01;

public class Usuario {
    protected static String nome, email, telefone;

    public String exibirInfo(String nome, String email, String telefone) {
        return "Nome: " + nome + ", Email: " + email + ", Telefone: " + telefone;
    }
}
