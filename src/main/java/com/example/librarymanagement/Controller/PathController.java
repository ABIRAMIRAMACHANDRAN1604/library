package com.example.librarymanagement.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.librarymanagement.PathModel.PathModel;
import com.example.librarymanagement.Repository.Pathrepository;

@Controller
public class PathController {

    @Autowired
    private Pathrepository repo;

    // ========== LOGIN ==========

    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; // loads login.jsp
    }

    @PostMapping("/login")
    public String doLogin(@RequestParam String username,
                          @RequestParam String password,
                          Model model) {
        if ("admin".equals(username) && "1234".equals(password)) {
            return "Addbook"; // success
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    // ========== HOME PAGE ==========

    @GetMapping("/home")
    public String showHomeForm() {
        return "Home";
    }

    // ========== ADD BOOK FORM ==========

    @GetMapping("/addbook")
    public String showAddBookForm(Model model) {
        model.addAttribute("book", new PathModel());
        return "Addbook";
    }

    // ========== SAVE BOOK TO DATABASE ==========

    @PostMapping("/books/add")
    public String addBook(@ModelAttribute PathModel book) {
        repo.save(book);
        return "redirect:/viewbook"; // redirect after saving
    }

    // ========== VIEW BOOKS ==========

    @GetMapping("/viewbook")
    public String showBookList(Model model) {
        List<PathModel> books = repo.findAll();
        model.addAttribute("books", books);
        return "viewbook";
    }

    // ========== EDIT BOOK ==========

    @GetMapping("/editbook/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        PathModel book = repo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid book Id: " + id));
        model.addAttribute("book", book);
        return "edit"; // make sure editbook.jsp exists
    }

    @PostMapping("/updatebook")
    public String updateBook(@ModelAttribute PathModel book) {
        repo.save(book);  // saves using the bound ID
        return "redirect:/viewbook";
    }


    // ========== DELETE BOOK ==========

    @GetMapping("/deletebook/{id}")
    public String deleteBook(@PathVariable("id") int id) {
        repo.deleteById(id);
        return "redirect:/viewbook";
    }
}
