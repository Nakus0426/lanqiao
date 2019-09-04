import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

public class Dom4jWriter {
    public static void main(String[] args) {
        //构建DOM实例
        Document document = DocumentHelper.createDocument();
        //增加一个根节点
        Element departments = document.addElement("departments");
        //增加子节点并添加属性
        Element department = departments.addElement("department").addAttribute("deptno","20");

        department.addElement("dname").addText("saler");
        department.addElement("address").addText("new york");
        department.addElement("phone").addText("110");

        //...
    }
}
