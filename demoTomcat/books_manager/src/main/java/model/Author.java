package model;

public class Author {
//    id INT PRIMARY KEY,
//    name_authors VARCHAR(50) NOT NULL
    private int idAuthor;
    private String nameAuthor;

    public Author() {
    }

    public Author(int idAuthor, String nameAuthor) {
        this.idAuthor = idAuthor;
        this.nameAuthor = nameAuthor;
    }

    public int getIdAuthor() {
        return idAuthor;
    }

    public void setIdAuthor(int idAuthor) {
        this.idAuthor = idAuthor;
    }

    public String getNameAuthor() {
        return nameAuthor;
    }

    public void setNameAuthor(String nameAuthor) {
        this.nameAuthor = nameAuthor;
    }
}
