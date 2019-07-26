package io_demo;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

/**
 * 6 . 使用BufferedWriter通过程序在在D盘下创建一个名为Letter的目录。
 * 根据用户的选择，在练习1中所创建的Letter目录下创建一个名为Letter.txt的文件，
 * 其内容如下：
 * 寄信人地址： 用户输入
 * 收件人地址： 用户输入
 * 签名： 用户输入
 * 日期： 用户输入
 *
 * 正文
 * 病假： 我因发烧，请假一天(用户输入)
 *
 * 事假： 参见婚礼，于2014-04-10（日期格式） 星期四  请假一天
 */
public class Test6 {
    public static void main(String[] args) {

        File file = new File("E:" + File.separator + "Letter");
        Scanner scanner = new Scanner(System.in);

        if (!file.exists()){

            file.mkdir();
        }

        try (BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter("E:" + File.separator + "Letter" + File.separator + "Letter.txt"));
        ){

            System.out.print("寄信人地址：");
            bufferedWriter.write("寄信人地址："+scanner.next() );
            bufferedWriter.newLine();
            System.out.print("收信人地址：");
            bufferedWriter.write("收信人地址："+scanner.next() );
            System.out.print("日期：");
            bufferedWriter.write("日期："+scanner.next());

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
