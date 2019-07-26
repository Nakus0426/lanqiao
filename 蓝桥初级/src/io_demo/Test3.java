package io_demo;

import java.io.File;
/*
* 3.  使用File类和FileFilter或FilenameFilter接口操作某一个目录，得到该目录下的所有*.txt文件名。
* */
public class Test3 {
    public static void main(String[] args) {
        File file = new File("E:\\3162052051721\\IDEAtools\\setting");

        File[] fileList = file.listFiles((dir, name) -> {
            File testFile = new File(dir, name);
            return name.endsWith(".txt");
        });

        for (File file1 : fileList) {
            System.out.println(file1.getName());
        }
    }
}
