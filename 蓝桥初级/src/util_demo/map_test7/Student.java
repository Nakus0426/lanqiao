package util_demo.map_test7;

import java.util.Objects;

public class Student implements Comparable<Student>{
    private String studentNo;
    private String studentName;
    private String birthday;

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public Student(String studentNo, String studentName, String birthday) {
        this.studentNo = studentNo;
        this.studentName = studentName;
        this.birthday = birthday;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Student student = (Student) o;
        return getStudentName().equals(student.getStudentName()) &&
                getBirthday().equals(student.getBirthday());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getStudentName(), getBirthday());
    }

    @Override
    public String toString() {
        return "Student{" +
                "studentNo='" + studentNo + '\'' +
                ", studentName='" + studentName + '\'' +
                ", birthday='" + birthday + '\'' +
                '}';
    }

    @Override
    public int compareTo(Student o) {
        return this.getStudentNo().compareTo(o.getStudentNo());
    }
}
