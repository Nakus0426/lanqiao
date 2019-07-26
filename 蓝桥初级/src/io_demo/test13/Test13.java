package io_demo.test13;

import java.io.*;
import java.util.Arrays;

/**
 * 13.	升级初级阶段项目《学生管理系统》，数组中所有的学生序列化到文件中
 */
public class Test13 {
    public static void main(String[] args) {

        Students[] students = new Students[2];
        students[0] = new Students("张一","1","男","123");
        students[1] = new Students("张二","2","女","321");

        try (ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream("E://tmp.bin"))) {

            objectOutputStream.writeObject(students);
            objectOutputStream.writeObject(null);

        } catch (IOException e) {
            e.printStackTrace();
        }

        try (ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream("E://tmp.bin"))) {

            Object std;
            while ((std = objectInputStream.readObject()) != null){
                Students[] studens1 = (Students[]) std;
                System.out.println(Arrays.toString(studens1));
            }
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}
