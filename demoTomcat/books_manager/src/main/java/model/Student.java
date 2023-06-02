package model;

public class Student {
//    id INT AUTO_INCREMENT PRIMARY KEY,
//    name_student VARCHAR(50) NOT NULL,
//    brithday VARCHAR(50) NOT NULL,
//    class_name VARCHAR(50) NULL
    private int id;
    private String name;
    private String birthday;
    private String className;

    public Student() {
    }

    public Student(int id, String name, String birthday, String className) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.className = className;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }
}
