package thread_demo;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.monitor.FileAlterationListenerAdaptor;
import org.apache.commons.io.monitor.FileAlterationMonitor;
import org.apache.commons.io.monitor.FileAlterationObserver;

import java.io.File;
import java.io.IOException;

public class ThreadTest5 {
    public static void main(String[] args) {
        // 创建txt文件的观察者,观察的主体是 d:\dir 目录，当dir目发生变化时观察者是可见
        // 观察者看见主体的变化时观察者将会去调用注册在观察者上的Listener(监听器)
        FileAlterationObserver txtObserver =
                new FileAlterationObserver("d:\\dir", new SuffixFileFilter(new String[]{".txt",".java",".html"}), IOCase.SYSTEM);

        // 适配器模式（设计模式中的一种），其实就对原生接的方法做了默认的空实现
        txtObserver.addListener(new FileAlterationListenerAdaptor(){
            /**
             * 文体出现的新文件时，将会执行此方法
             * @param file
             */
            @Override
            public void onFileCreate(File file) {
                System.out.println("FileMonitor.onFileCreate(): 新文件名：" + file.getName());
                try {
                    // 目标文件
                    File destFile = new File("d:\\txt", file.getName());
                    // copy file to txt directory
                    FileUtils.copyFile(file, destFile);

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            /**
             * 目录里的文件被修改时，将会执行此方法
             * @param file
             */
            @Override
            public void onFileDelete(File file) {
                System.out.println("FileMonitor.onFileDelete(): " + file.getName());
            }
        });


        //
        // txtObserver.addListener(new FileAlterationListener() {
        //     @Override
        //     public void onStart(FileAlterationObserver observer) {
        //         // 无代码，因为此事件观察者不关心
        //         System.out.println("FileMonitor.onStart");
        //     }
        //
        //     /**
        //      * 目录中出现的新的子目录时，将会执行此方法
        //      * @param directory
        //      */
        //     @Override
        //     public void onDirectoryCreate(File directory) {
        //         System.out.println("FileMonitor.onDirectoryCreate");
        //     }
        //
        //     @Override
        //     public void onDirectoryChange(File directory) {
        //         System.out.println("FileMonitor.onDirectoryChange");
        //     }
        //
        //     @Override
        //     public void onDirectoryDelete(File directory) {
        //         System.out.println("FileMonitor.onDirectoryDelete");
        //     }
        //
        //     /**
        //      * 文体出现的新文件时，将会执行此方法
        //      * @param file
        //      */
        //     @Override
        //     public void onFileCreate(File file) {
        //         System.out.println("FileMonitor.onFileCreate(): 新文件名：" + file.getName());
        //     }
        //
        //     /**
        //      * 目录里的文件被修改时，将会执行此方法
        //      * @param file
        //      */
        //     @Override
        //     public void onFileChange(File file) {
        //        //         // System.out.println("FileMonitor.onFileChange(): 文件被修改：" + file.getName());
        //     }
        //
        //     /**
        //      * 目录里的文件被修改时，将会执行此方法
        //      * @param file
        //      */
        //     @Override
        //     public void onFileDelete(File file) {
        //         System.out.println("FileMonitor.onFileDelete(): " + file.getName());
        //     }
        //
        //     @Override
        //     public void onStop(FileAlterationObserver observer) {
        //         System.out.println("FileMonitor.onStop");
        //     }
        // });


        FileAlterationObserver mp3Observer =
                new FileAlterationObserver("d:\\dir", new SuffixFileFilter(new String[]{".mp3"}), IOCase.SYSTEM);

        mp3Observer.addListener(new FileAlterationListenerAdaptor(){
            @Override
            public void onFileCreate(File file) {
                try {
                    File destFile = new File("d:\\mp3", file.getName());
                    // 移动文件
                    FileUtils.moveFile(file, destFile);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });

        try {
            //监控
            FileAlterationMonitor monitor = new FileAlterationMonitor(5000, txtObserver, mp3Observer);
            monitor.start();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
