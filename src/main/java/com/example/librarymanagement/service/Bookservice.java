package com.example.librarymanagement.service;

import com.example.librarymanagement.PathModel.PathModel;
import com.example.librarymanagement.Repository.Pathrepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Bookservice {

    @Autowired
    private Pathrepository repo;

    public void saveBook(PathModel book) {
        repo.save(book);
    }

    public List<PathModel> getAllBooks() {
        return repo.findAll();
    }

    public Optional<PathModel> getBookById(int id) {
        return repo.findById(id);
    }

    public void deleteBookById(int id) {
        repo.deleteById(id);
    }
}
