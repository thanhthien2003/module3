package model;

public class Book {
//    id INT AUTO_INCREMENT PRIMARY KEY,
//    title VARCHAR(50) NOT NULL,
//    page_size INT NOT NULL,
//    author_id INT NOT NULL,
//    FOREIGN KEY (author_id)
//    REFERENCES authors (id),
//    cate_gory_id INT NOT NULL,
//    FOREIGN KEY (cate_gory_id)
//    REFERENCES cate_gory (id)
    private int id;
    private String title;
    private int pageSize;
    private Author authorId;
    private Category cateGoryId;

    public Book() {
    }

    public Book(String title, int pageSize, Author authorId, Category cateGoryId) {
        this.title = title;
        this.pageSize = pageSize;
        this.authorId = authorId;
        this.cateGoryId = cateGoryId;
    }

    public Book(int id, String title, int pageSize, Author authorId, Category cateGoryId) {
        this.id = id;
        this.title = title;
        this.pageSize = pageSize;
        this.authorId = authorId;
        this.cateGoryId = cateGoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public Author getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Author authorId) {
        this.authorId = authorId;
    }

    public Category getCateGoryId() {
        return cateGoryId;
    }

    public void setCateGoryId(Category cateGoryId) {
        this.cateGoryId = cateGoryId;
    }
}
