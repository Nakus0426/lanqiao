package io_demo;

import java.io.*;

/**
 * @author 张建平 on 2019/3/14 19:24
 */
public class Test10 {

    public static void main(String[] args) {

        File dir = new File("e:\\mp3");

        File[] txtFiles = dir.listFiles((directory,name)->{
            return name.endsWith(".java");
        });

        File txtOutDir = new File("e:\\text");
        if (!txtOutDir.exists()) {
            // 目录不存在则创建
            txtOutDir.mkdirs();
        }

        // 遍历每个要写出去的文件
        for (File txtFile : txtFiles) {
            // 写出的文件
            File outFile = new File(txtOutDir, txtFile.getName());

            try (BufferedReader br = new BufferedReader(new FileReader(txtFile)); // 读源文件
                 BufferedWriter bw = new BufferedWriter(new FileWriter(outFile))  // 写目标文件
            ) {
                String line = null;
                while ((line=br.readLine()) != null) {
                    bw.write(line);
                    bw.newLine();
                }

            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        // ----- mp3 --------
        File[] mp3Files = dir.listFiles((directory, name) -> {
            return name.endsWith(".mp3");
        });

        File mp3OutDir = new File("e:\\mymp3");
        if (!mp3OutDir.exists()) {
            // 目录不存在则创建
            mp3OutDir.mkdirs();
        }

        // 遍历每个要写出去的文件
        for (File mp3File : mp3Files) {
            // 写出的文件
            File outFile = new File(mp3OutDir, mp3File.getName());
            // 1M
            byte[] buf = new byte[1024 * 1024];
            try (BufferedInputStream bis = new BufferedInputStream(new FileInputStream(mp3File)); // 读源文件
                BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(outFile));// 写目标文件
            ) {
                int len = -1;
                while ((len = bis.read(buf)) != -1) {
                    bos.write(buf,0,len);
                }

            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
}
