package io_demo;

import java.io.*;
import java.net.URL;
import java.net.URLDecoder;

/**
 * 4.	编写一个程序使用FileReader类读取test.txt文件的内容。如果test.txt文件是在项目的src目录下或包中的如何读取，
 *      要求不能使用绝对路径D:\.....这种路径来操作。
 * 提示：
 * a)	获取项目的路径可以参考Class为的Xxx.class.getResource("/或.")方法。
 * 路径表示说明：
 * i.	"/"表示项目类路径的根目录，即out/production/module_name这个路径,
 * ii.	 “.”表示和Xxx.class文件所在的位置相同（相对路径）。
 * iii.	“../../”表示从Xxx.class文件的位置后退两级。
 * Module_name/src/test.txt ---> out/production/module_name/test.txt
 *
 * b)	getResource("")返回的URL可以使用getPath()去获得路径,如果路径中包含中文输出显示的是ISO-8859-1的编码。
 * 将ISO-8859-1编码成UTF-8编码：
 * String path = java.net.URLDecoder.decode(string, “utf-8”);
 */
public class Test4 {

    public static void main(String[] args) throws UnsupportedEncodingException {
        URL url = Test4.class.getResource("/");
        String path = URLDecoder.decode(url.getPath(), "utf-8");

        try (FileReader reader = new FileReader(path + "FiledReaderDemo1.txt");
             FileWriter writer = new FileWriter("D:" + File.separator + "testout.txt");
        ) {
            int len = -1;
            char[] cbuf = new char[2048];
            while ((len = reader.read(cbuf)) != -1){
                writer.write(cbuf, 0, len);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
