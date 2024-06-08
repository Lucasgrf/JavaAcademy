package lucas.aula04.exceptions.calculadora;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {
    static int num1;
    static int num2;
    static boolean flag = false;

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (!flag) {
            try {
                System.out.println("Digite o primeiro valor: ");
                num1 = sc.nextInt();
                System.out.println("Digite o segundo valor: ");
                num2 = sc.nextInt();
                flag = true;
            } catch (InputMismatchException e) {
                System.out.println("Erro! Insira um inteiro ");
                sc.nextLine();
            }//finally é a linha final de comando

            if (num1 == 0 && num2 == 0) {
                try {
                    throw new ErroCalculo(0, 0, "O valor deve ser diferente de 0");
                } catch (ErroCalculo e) {
                    System.out.println("Repita o calculo");
                    e.printStackTrace(); //Mostra o trajeto da exceção.
                }
            }

            System.out.println("Adição: " + (num1 + num2));
            System.out.println("Subtração: " + (num1 - num2));

        }
    }
}
