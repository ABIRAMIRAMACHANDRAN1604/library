package com.example.librarymanagement.PathModel;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "book")
public class PathModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private int bookid;

    @Column
    private String bookname;

    @Column
    private String author;

    @Column
    private int quantity;
    
    

    
    public PathModel() {}


    public PathModel(int id, int bookid, String bookname, String author, int quantity) {
        this.id = id;
        this.bookid = bookid;
        this.bookname = bookname;
        this.author = author;
        this.quantity = quantity;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "PathModel [id=" + id + ", bookid=" + bookid + ", bookname=" + bookname +
               ", author=" + author + ", quantity=" + quantity + "]";
    }
}