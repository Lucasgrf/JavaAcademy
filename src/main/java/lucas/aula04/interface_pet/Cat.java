package lucas.aula04.interface_pet;

public class Cat implements Pet{
    private final String name;
    private final String color;
    @Override
    public void play() {
        System.out.println("The cat "+name+" are playing with the ball.");
    }
    public Cat(String name, String color) {
        this.name = name;
        this.color = color;
    }
    public void showCat(){
        System.out.println("Cat :Name: " + name + " Color: " + color);
    }
}
