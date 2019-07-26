package util_demo.list_test2;

import java.util.ArrayList;

public class StudentList {
    ArrayList list = new ArrayList();

    public void addstudent(Student student) throws StudentExisException {


        if (list.contains(student)){
            throw new StudentExisException("Student is aready added!");
        }else{
            list.add(student);
        }
    }

    public void list(){
        for (Object o : list) {
            System.out.println(o.toString());
        }
    }

    public Object removeStudent(String studentNo){
        list.remove(studentNo);
        return list.get(Integer.parseInt(studentNo));
    }
}
