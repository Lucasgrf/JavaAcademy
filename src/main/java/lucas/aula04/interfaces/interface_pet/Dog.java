package lucas.aula04.interfaces.interface_pet;

public class Dog implements Pet {
    private String name;
    private String eyeColor;


    public Dog(String name, String eyeColor) {
        this.name = name;
        this.eyeColor = eyeColor;
    }

    @Override
    public void play() {
        System.out.println("Name:" + name + " Eyes: " + eyeColor + " The dog are playing with the bone");
    }

    public void showDog() {
        System.out.println("Dog: Name: " + name + " Eye Color: " + eyeColor);
    }
}
