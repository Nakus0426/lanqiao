package stringbuffer_demo;
import java.util.Scanner;

public class StringBuffer {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        java.lang.StringBuffer sb = new java.lang.StringBuffer();
        for (int i=0; i<3; i++){
            System.out.print("请输入名字：");
            String name = scanner.next();

            System.out.print("请输入年龄：");
            int age = scanner.nextInt();

            System.out.print("请输入性别：");
            String gender = scanner.next();

            Student student = new Student(name, age, gender);
            sb.append((i + 1) + "."+student.toString());
        }
        System.out.println(sb.toString());
    }
}
