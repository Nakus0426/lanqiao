package reflection_demo;

import java.lang.reflect.Field;

public class ReflectFiledDemo {
    public static void main(String[] args) {


        try {
            Class studentClass = Students.class;
            Object studentObject = studentClass.newInstance();

            Field studentName = studentClass.getDeclaredField("studentName");
            studentName.setAccessible(true);
            studentName.set(studentObject,"zhang");

            System.out.println(studentName);

        } catch (InstantiationException | IllegalAccessException | NoSuchFieldException e) {
            e.printStackTrace();
        }
    }
}
