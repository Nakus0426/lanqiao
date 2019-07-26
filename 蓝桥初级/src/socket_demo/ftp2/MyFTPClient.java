package socket_demo.ftp2;

import java.io.*;
import java.net.Socket;
import java.net.UnknownHostException;

public class MyFTPClient {

    public static void main(String[] args) {
        File dir = new File("E:\\work\\绘图");

        File[] files = dir.listFiles((dir1, name) -> { //lambda
            return name.endsWith(".jpg");
        });

        // 2. 每上传一个文件创建一个 Socket 连接
        Socket socket = null;
        for (File file : files) {
            try {
                 socket = new Socket("127.0.0.1", 8899);
                PrintWriter out = new PrintWriter(socket.getOutputStream());

                System.out.println("客户端上传文件：" + file.getName());
                out.println(file.getName()+"\n");
                out.flush();

                OutputStream netOut = socket.getOutputStream();

                FileInputStream uploadFile = new FileInputStream(file);
                byte[] buf = new byte[1024 * 1024];
                int len = -1;
                while((len = uploadFile.read(buf)) != -1){
                    netOut.write(buf, 0 , len);
                }
                netOut.flush();

                Thread.sleep(10000);

            } catch (UnknownHostException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
