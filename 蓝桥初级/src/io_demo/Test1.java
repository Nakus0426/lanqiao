package io_demo;

import java.io.File;
/*
* 1.	File: 编写一个程序将文本文件的相关信息进行输出，
*       如文件名、是文件还是目录、文件大小、是否文件或目录、文件的路径等…。
* */

public class Test1 {
    public static void main(String[] args) {
        File file = new File("E:\\3162052051721\\IDEA工具\\ioDemo.java");

        System.out.println("是否为文件："+file.isFile());
        System.out.println("文件名："+file.getName());
        System.out.println("是否为目录："+file.isDirectory());
        System.out.println("文件路径："+file.getPath());
        System.out.println("文件大小："+file.length()+"字节");
    }
}
