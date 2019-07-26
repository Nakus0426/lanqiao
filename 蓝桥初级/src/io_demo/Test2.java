package io_demo;

import java.io.File;
/*
* 2.	使用File操作某一个目录，并将该目录一所有的文件名显示出。
* */
public class Test2 {
    public static void main(String[] args) {
        File file = new File("E:\\3162052051721\\IDEAtools\\setting");

        System.out.println("当前目录为："+file.getName());

        String[] filenames = file.list();

        System.out.println("当前路径下有：");

        for(String list : filenames){
            System.out.println(list);
        }
    }
}
