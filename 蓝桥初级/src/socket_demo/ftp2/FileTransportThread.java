package socket_demo.ftp2;

import java.io.*;
import java.net.Socket;

public class FileTransportThread implements Runnable{

    private Socket socket;
    private File uploadDir;

    public FileTransportThread(Socket socket, File uploadDir) {
        this.socket = socket;
        this.uploadDir = uploadDir;
    }

    @Override
    public void run() {
        FileOutputStream fileOutputStream = null;
        try {
            System.out.println(socket.getInetAddress() + "连接成功！");
            InputStream in = socket.getInputStream();

            BufferedReader br = new BufferedReader(new InputStreamReader(in));
            String fileName = br.readLine();
            System.out.println("正在接收文件：" + fileName);
            File file = new File(uploadDir, fileName);
            //
            fileOutputStream = new FileOutputStream(file);

            byte[] buf = new byte[1024 * 1024];
            int len = -1;
            while (!socket.isInputShutdown() && (len = in.read(buf)) != -1) {
                fileOutputStream.write(buf, 0, len);
            }
            System.out.println("接收文件：" + fileName + "完毕。\n");

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fileOutputStream.flush();
                fileOutputStream.close();

                if (socket != null && !socket.isClosed()) {
                    socket.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
