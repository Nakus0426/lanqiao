package socket_demo.socket_test1;

import java.io.File;
import java.io.FilenameFilter;

public class EndFilter implements FilenameFilter {
    private String name;

    public EndFilter(String name) {
        this.name = name;
    }

    @Override
    public boolean accept(File dir, String name) {
        return name.endsWith(".txt");
    }
}
