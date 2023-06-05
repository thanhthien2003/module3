CREATE DATABASE library;
USE library;
CREATE TABLE students (
    id_student INT AUTO_INCREMENT PRIMARY KEY,
    name_student VARCHAR(50) NOT NULL,
    brithday VARCHAR(50) NOT NULL,
    class_name VARCHAR(50) NULL
);
CREATE TABLE authors(
author_id INT PRIMARY KEY AUTO_INCREMENT,
name_authors VARCHAR(50) NOT NULL
);
CREATE TABLE cate_gory (
    cate_gory_id INT PRIMARY KEY  AUTO_INCREMENT,
    name_cate_gory VARCHAR(50) NOT NULL
);
CREATE TABLE books (
    id_books INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    page_size INT NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id)
        REFERENCES authors (author_id),
    cate_gory_id INT NOT NULL,
    FOREIGN KEY (cate_gory_id)
        REFERENCES cate_gory (cate_gory_id)
);
CREATE TABLE borrows(
borrows_id INT PRIMARY KEY ,
id_student INT NOT NULL ,FOREIGN KEY(id_student) REFERENCES students(id_student),
id_books INT NOT NULL ,FOREIGN KEY(id_books) REFERENCES books(id_books),
borrow_date VARCHAR(50) NOT NULL,
return_date VARCHAR(50) NOT NULL
);
INSERT into authors(name_authors) VALUES
 ('thanh Son'),
 ('thanhkim'),
 ('quoc thiet'),
 ('quang dang');
INSERT into cate_gory(name_cate_gory) VALUES
('tieu thuyet'),
('truyen tranh'),
('sach'),
('phi kim');
select b.*,c.name_cate_gory,a.name_authors from books b
join cate_gory c 
on b.cate_gory_id = c.cate_gory_id
join authors a 
on b.author_id = a.author_id;
insert into books(title,page_size,author_id,cate_gory_id) value 
("a",1,2,3),
("b",2,1,1);
