package reflection_demo;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ReflectMethodDemo {
    public static void main(String[] args) {


        try {
            Class studentsClass = Students.class;
            Constructor constructor = studentsClass.getDeclaredConstructor(String.class, String.class, String.class, String.class);
            Object obj = constructor.newInstance("111","111","111","111");
            Method method = studentsClass.getMethod("toString",null);
            Object invoke = method.invoke(obj, null);
            System.out.println(invoke);

        } catch (InstantiationException | NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }
}
