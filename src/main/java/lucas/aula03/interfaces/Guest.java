package lucas.aula03.interfaces;

public class Guest implements User {
    public static void main(String[] args) {
        Guest guest = new Guest();

        if (guest.isAuthorized("We Are Atos")) {
            System.out.println("Be welcome!");
        } else {
            System.out.println("Not authorized, try again!");
        }
    }

    @Override
    public boolean isAuthorized(String word) {
        boolean status = false;
        if (word.equalsIgnoreCase("WeAreAtos")) {
            status = true;
        }
        return status;
    }
}
