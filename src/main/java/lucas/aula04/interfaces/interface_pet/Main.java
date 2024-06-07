package lucas.aula04.interfaces.interface_pet;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Main {

    public static void main(String[] args) {

        Pet d1 = new Dog("Toto", "Brown");
        Pet c1 = new Cat("Missi", "Yellow");
        Pet c2 = new Cat("Mimi", "Yellow");
        Pet c3 = new Cat("Mita", "Grey");
        Pet d2 = new Dog("Bidu", "Light Grey");

        List<Pet> pets = new ArrayList<>();
        Collections.addAll(pets, d1, c1, c2, c3, d2);
       /* pets.add(d1);
        pets.add(d2);
        pets.add(c1);
        pets.add(c2);
        pets.add(c3);*/
        pets.forEach(pet -> pet.play());

        //c1.showCat();
        Cat cat = new Cat("Brown", "Yellow");
        cat.showCat();
    }
}
