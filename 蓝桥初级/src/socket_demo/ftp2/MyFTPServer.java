package socket_demo.ftp2;

import org.apache.commons.io.FileUtils;
import socket_demo.ftp2.FileTransportThread;

import java.io.File;
import java.io.IOException;
import java.net.ServerSocket;

public class MyFTPServer {

    public static void main(String[] args) {
        try {
            File uploadDir = new File("d:\\ftp");
            if (!uploadDir.exists()) {
                FileUtils.forceMkdir(uploadDir);
            }

            ServerSocket ss = new ServerSocket(8899);
            System.out.println("FTP服务器已启动.");

            while (true) {
                new Thread(new FileTransportThread(ss.accept(), uploadDir)).start();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
