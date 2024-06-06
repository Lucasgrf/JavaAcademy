package lucas.aula04.interface_duck;

public class Main {
    public static void main(String[] args) {
        Duck duck = new Duck();
        Flyable duck1 = new Duck();
        Swimmable duck3 = new Duck();

        duck.fly();
        duck.swim();
        duck.talk();

        duck1.fly(); //Apenas voa;
        duck3.swim();//Apenas nada;
    }
}
