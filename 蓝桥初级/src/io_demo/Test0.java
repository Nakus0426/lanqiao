package io_demo;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

public class Test0 {

    public static void main(String[] args) {
        URL url = null;
        try {
            url = new URL("http://www.glut.edu.cn/__local/C/2F/D2/009328D29180F15D5C342E95EB9_3D5D03FA_26CAF.jpg");

        } catch (MalformedURLException e) {
            e.printStackTrace();
        }

        try(
            InputStream path = url.openStream();
            BufferedInputStream bir = new BufferedInputStream(path);
            BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream("example.jpg"));
            )
        {

            int len = -1;
            byte[] buf = new byte[1024*10];
            while ((len = bir.read(buf)) != -1){
                bos.write(buf,0,len);
        }


        } catch (IOException e) {
            e.printStackTrace();
        }



    }
}
