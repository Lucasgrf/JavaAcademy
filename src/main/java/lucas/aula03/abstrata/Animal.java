package lucas.aula03.abstrata;

public abstract class Animal {

    public abstract void fazerBarulho(String barulho);

    public void andar(String nome) {
        System.out.println(nome + " andando");
    }
}
