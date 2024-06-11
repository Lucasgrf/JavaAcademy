package lucas.modulo_java.projeto_final;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class GerarArquivoTexto {
    public static void gerarArquivoTexto(String nomeArquivo, List<Produto> produtos) {
        try (PrintWriter writer = new PrintWriter(nomeArquivo)) {
            writer.println("item:\tQtd:\tNome:\t\tPreço:\t\tSubTotal:");

            double total = 0.0;
            int item = 0;

            for (Produto produto : produtos) {
                item++;
                writer.printf("%d\t%d\t%s\t\t%.2f\t\t%.2f%n",
                        item, produto.getQuantidade(), produto.getNome(), produto.getPreco(), produto.getSubTotal());
                total += produto.getSubTotal();
            }

            writer.printf("Total: %.2f%n", total);

        } catch (IOException e) {
            System.err.println("Erro ao escrever no arquivo! Tente novamente.");
        }
    }
}
