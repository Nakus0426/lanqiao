package util_demo.list_test2;

import java.util.Scanner;

public class StudentListTest {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        StudentList studentList = new StudentList();
        for (int i = 1; i < 3; i++) {
            System.out.print("请输入第"+i+"名学生姓名：");
            String stdentName = input.next();
            System.out.print("请输入第"+i+"名学生生日（格式：年-月-日）:");
            String birthDay = input.next();
            try {
                studentList.addstudent(new Student(stdentName,birthDay));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        studentList.list();
    }
}
