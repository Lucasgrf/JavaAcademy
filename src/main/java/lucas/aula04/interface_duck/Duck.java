package lucas.aula04.interface_duck;

public class Duck implements Swimmable, Flyable, Voice {
    @Override
    public void fly() {
        System.out.println("Flying!");
    }

    @Override
    public void swim() {
        System.out.println("Swimming!");
    }

    public void talk(){
        System.out.println("Qua qua!");
    }
}
