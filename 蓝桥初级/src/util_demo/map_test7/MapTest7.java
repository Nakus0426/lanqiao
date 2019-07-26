package util_demo.map_test7;

import java.util.Scanner;
import java.util.TreeSet;

/**
 * 7.	编写一个程序实现将学生的信息添加到Set中：
 * 1)	通过一个方法: public void add(Student student)，从控制台输入学生信息并将学生对象添加到Set中，如果Set中存在相同姓名和和出生日期的学生本方法将抛出StudentExistException异常。
 * 2)	要求添加到Set的学生要具先后顺序性。
 * 3)	将学生存储到TreeSet中，使用内部比较器实现java.lang.Comparable
 */
public class MapTest7 {
    TreeSet<Student> treeSet = new TreeSet();
    public void add(Student student) throws StudentExistException {
        if (!treeSet.contains(student)){
            treeSet.add(student);
            for (Student s : treeSet) {
                System.out.println(s);
            }
        }else{
            throw new StudentExistException("该学生已存在！");
        }
    }

    public static void main(String[] args) {
        System.out.print("请输入学生学号：");
        String stduentNo = new Scanner(System.in).next();
        System.out.print("请输入学生姓名：");
        String stduentName = new Scanner(System.in).next();
        System.out.print("请输入学生生日：");
        String birthday = new Scanner(System.in).next();
        MapTest7 mapTest7 = new MapTest7();

        try {
            mapTest7.add(new Student("1","zhang","1"));
            mapTest7.add(new Student(stduentNo,stduentName,birthday));
        } catch (StudentExistException e) {
            e.printStackTrace();
        }
    }
}
