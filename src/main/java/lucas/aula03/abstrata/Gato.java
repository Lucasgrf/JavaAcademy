package lucas.aula03.abstrata;

public class Gato extends Animal {
    @Override
    public void fazerBarulho(String barulho) {
        System.out.println(barulho);
    }
}
