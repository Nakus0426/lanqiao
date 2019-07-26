package io_demo;

import java.io.*;

/**
 * 7.	将两个文本文件D:\a.txt和D:\b.txt的内容合并成一个D:\merge.txt文件。
 * 提示：依次读取两个文本文件，写到同一个输出文件中（输出流）。
 */
public class Test7 {
    public static void main(String[] args) {

        try (BufferedReader bufferedReader1 = new BufferedReader(new FileReader("E://3162052051721//code//text1.txt"));
             BufferedReader bufferedReader2 = new BufferedReader(new FileReader("E://3162052051721//code//text2.txt"));
             BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter("E://3162052051721//code//mix.txt"));
        ){

            String line = null;
            while ((line = bufferedReader1.readLine()) != null) {
                bufferedWriter.write(line);
                bufferedWriter.newLine();
            }

            while ((line = bufferedReader2.readLine()) != null){
                bufferedWriter.write(line);
                bufferedWriter.newLine();
            }

        } catch (IOException e) {;
            e.printStackTrace();
        }


    }
}
