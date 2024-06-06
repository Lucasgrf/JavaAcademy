package lucas.aula04.interface_duck;

public interface Voice {
    default void talk(){
        System.out.println("I can talk talk");
    }
}
