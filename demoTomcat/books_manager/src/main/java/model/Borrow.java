package model;

public class Borrow {
//    id INT PRIMARY KEY ,
//    id_student INT NOT NULL ,FOREIGN KEY(id_student) REFERENCES students(id),
//    id_books INT NOT NULL ,FOREIGN KEY(id_books) REFERENCES books(id),
//    borrow_date VARCHAR(50) NOT NULL,
//    return_date VARCHAR(50) NOT NULL
    private int idBorrow;
    private int idStudent;
    private int idBook;
    private  String borrowDate;
    private String returnDate;

    public Borrow() {
    }

    public Borrow(int idBorrow, int idStudent, int idBook, String borrowDate, String returnDate) {
        this.idBorrow = idBorrow;
        this.idStudent = idStudent;
        this.idBook = idBook;
        this.borrowDate = borrowDate;
        this.returnDate = returnDate;
    }

    public int getIdBorrow() {
        return idBorrow;
    }

    public void setIdBorrow(int idBorrow) {
        this.idBorrow = idBorrow;
    }

    public int getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(int idStudent) {
        this.idStudent = idStudent;
    }

    public int getIdBook() {
        return idBook;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public String getBorrowDate() {
        return borrowDate;
    }

    public void setBorrowDate(String borrowDate) {
        this.borrowDate = borrowDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }
}
