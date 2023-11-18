import java.util.Scanner;

class ComplexNumber {
    private double real;
    private double imaginary;

    public ComplexNumber(double real, double imaginary) {
        this.real = real;
        this.imaginary = imaginary;
    }

    public ComplexNumber add(ComplexNumber other) {
        double realSum = this.real + other.real;
        double imaginarySum = this.imaginary + other.imaginary;
        return new ComplexNumber(realSum, imaginarySum);
    }

    public ComplexNumber multiply(ComplexNumber other) {
        double realProduct = this.real * other.real - this.imaginary * other.imaginary;
        double imaginaryProduct = this.real * other.imaginary + this.imaginary * other.real;
        return new ComplexNumber(realProduct, imaginaryProduct);
    }

    public double getMagnitude() {
        return Math.sqrt(this.real * this.real + this.imaginary * this.imaginary);
    }
}

public class ComplexNumberOperations {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите действительную часть первого комплексного числа: ");
        double real1 = scanner.nextDouble();
        System.out.print("Введите мнимую часть первого комплексного числа: ");
        double imaginary1 = scanner.nextDouble();

        System.out.print("Введите действительную часть второго комплексного числа: ");
        double real2 = scanner.nextDouble();
        System.out.print("Введите мнимую часть второго комплексного числа: ");
        double imaginary2 = scanner.nextDouble();

        ComplexNumber complexNumber1 = new ComplexNumber(real1, imaginary1);
        ComplexNumber complexNumber2 = new ComplexNumber(real2, imaginary2);

        ComplexNumber sum = complexNumber1.add(complexNumber2);
        ComplexNumber product = complexNumber1.multiply(complexNumber2);
        double magnitude = complexNumber1.getMagnitude();

        System.out.println("Сумма: " + sum.real + " + " + sum.imaginary + "i");
        System.out.println("Произведение: " + product.real + " + " + product.imaginary + "i");
        System.out.println("Модуль первого комплексного числа: " + magnitude);
    }
}
