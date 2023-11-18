import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите количество чисел: ");
        int n = scanner.nextInt();
        
        int[] a = new int[n];
        int[] b = new int[n];
        
        System.out.println("Введите числа:");
        for (int i = 0; i < n; i++) {
            a[i] = scanner.nextInt();
        }
        
        for (int i = 0; i < n; i++) {
            int sum = 0;
            for (int j = 0; j <= i; j++) {
                sum += a[j];
            }
            b[i] = sum;
        }
        
        System.out.println("Полученная последовательность:");
        for (int i = 0; i < n; i++) {
            System.out.print(b[i] + " ");
        }
    }
}
