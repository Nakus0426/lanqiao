package util_demo.list_test2;

public class Student {
    private String studentName;
    private String birthDay;

    public Student() {
    }

    public Student(String studentName, String birthDay) {
        this.studentName = studentName;
        this.birthDay = birthDay;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public String toString() {
        return "Student{" +
                "studentName='" + studentName + '\'' +
                ", birthDay='" + birthDay + '\'' +
                '}';
    }
}
