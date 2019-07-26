package socket_demo.socket_test1;

import org.apache.commons.io.filefilter.SuffixFileFilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;

/**
 * 1.	使用Socket和线程编写一个FTP文件服务器程序。客户端与服务器的交互过程参考下图。
 * 实现步骤：
 * a)	客户端（本机）将文件上传到FTP服务器（本机或其它机器）的d:\\upload目录，如果服务器上的d:\\upload目录不存在则动态创建出来。
 * b)	将客户端某目录中的图片文件上传至服务器; 客户端需获得指定目录中的所有图片文件。
 * c)	将每个文件上传至FTP服务器端（本机或其它机器）。上传一个文件建立一个 socket 连接。服务器端每接收到一个客户端的 socket连接时,就开一个线程处理该连接，并将此 socket连接封装到线程内去处理。
 * d)	上传完成后FTP服务器给予如：“test.jpg文件上传完毕，本次上传花费了xx秒。”这样的提示信息。
 */
public class FTP_Client {
    public static void main(String[] args) {
        for (int i = 0; i < 5; i++) {
            File file = new File("E:\\work\\homework\\example");
            EndFilter filter = new EndFilter(".txt");
        }
    }
}