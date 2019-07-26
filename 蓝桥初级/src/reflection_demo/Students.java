package reflection_demo;

import java.io.Serializable;

public class Students implements Serializable {
    private String studentName;
    private String studentAge;
    private String studentSex;
    private transient String studentPassWord;

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentAge() {
        return studentAge;
    }

    public void setStudentAge(String studentAge) {
        this.studentAge = studentAge;
    }

    public String getStudentSex() {
        return studentSex;
    }

    public void setStudentSex(String studentSex) {
        this.studentSex = studentSex;
    }

    public String getStudentPassWord() {
        return studentPassWord;
    }

    public void setStudentPassWord(String studentPassWord) {
        this.studentPassWord = studentPassWord;
    }

    public Students() {
    }

    public Students(String studentName, String studentAge, String studentSex, String studentPassWord) {
        this.studentName = studentName;
        this.studentAge = studentAge;
        this.studentSex = studentSex;
        this.studentPassWord = studentPassWord;
    }

    @Override
    public String toString() {
        return "Students{" +
                "studentName='" + studentName + '\'' +
                ", studentAge='" + studentAge + '\'' +
                ", studentSex='" + studentSex + '\'' +
                ", studentPassWord='" + studentPassWord + '\'' +
                '}';
    }
}
