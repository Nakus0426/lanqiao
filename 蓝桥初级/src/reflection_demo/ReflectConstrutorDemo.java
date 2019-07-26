package reflection_demo;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class ReflectConstrutorDemo {
    public static void main(String[] args) {

        try {
            Class studentsClass = Students.class;
            Constructor[] constructors1 = studentsClass.getConstructors();
            for (Constructor constructor : constructors1) {
                System.out.println(constructor);
            }

            Constructor constructors = studentsClass.getDeclaredConstructor(String.class,String.class,String.class,String.class);
            Object obj = constructors.newInstance("zhang", "zhang", "zhang","zhang");
            System.out.println(obj);

        } catch (NoSuchMethodException | InstantiationException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }


    }
}
