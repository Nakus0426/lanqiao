package io_demo;

import java.io.*;

/**
 * 5.	将第4题用BufferedReader类重新实现文件读取，并且使用BufferedWriter写文件到磁盘
 */
public class Test5 {
    public static void main(String[] args) {
        try (BufferedReader reader =
                     new BufferedReader(new FileReader("E:" + File.separator + "3162052051721" + File.separator + "code" + File.separator + "text1.txt"));
             FileWriter writer =
                     new FileWriter("E:" + File.separator + "3162052051721" + File.separator + "code" + File.separator + "mix.txt");
        ){

            String line;
            while ((line = reader.readLine()) != null){

                writer.write(line);

            }

        }catch (IOException e) {

            e.printStackTrace();

        }
    }
}
