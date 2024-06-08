package lucas.aula04.interfaces.interface_duck;

public class Main {
    public static void main(String[] args) {
        Duck duck = new Duck();
        Flyable duck1 = new Duck();
        Swimmable duck3 = new Duck();
        Voice duck4 = new Duck();

        duck.fly();
        duck.swim();
        duck.talk();

        duck1.fly(); //Apenas voa;
        duck3.swim();//Apenas nada;
        duck4.talk();//Apenas fala;
    }
}
