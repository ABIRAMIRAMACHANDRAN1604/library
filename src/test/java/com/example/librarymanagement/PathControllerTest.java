package com.example.librarymanagement;

import com.example.librarymanagement.Controller.PathController;
import com.example.librarymanagement.PathModel.PathModel;
import com.example.librarymanagement.Repository.Pathrepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Arrays;
import java.util.Optional;

import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.doNothing;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(PathController.class)
public class PathControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private Pathrepository repo;

    @Test
    public void testLoginSuccess() throws Exception {
        mockMvc.perform(post("/login")
                .param("username", "admin")
                .param("password", "1234"))
                .andExpect(status().isOk())
                .andExpect(view().name("Addbook"));
    }

    @Test
    public void testLoginFail() throws Exception {
        mockMvc.perform(post("/login")
                .param("username", "wrong")
                .param("password", "pass"))
                .andExpect(status().isOk())
                .andExpect(model().attributeExists("error"))
                .andExpect(view().name("login"));
    }

    @Test
    public void testShowBookList() throws Exception {
        PathModel book = new PathModel(1, 101, "Java", "Abirami", 10);
        given(repo.findAll()).willReturn(Arrays.asList(book));

        mockMvc.perform(get("/viewbook"))
                .andExpect(status().isOk())
                .andExpect(model().attributeExists("books"))
                .andExpect(view().name("viewbook"));
    }

    @Test
    public void testEditBook() throws Exception {
        PathModel book = new PathModel(1, 101, "Java", "Abirami", 10);
        given(repo.findById(1)).willReturn(Optional.of(book));

        mockMvc.perform(get("/editbook/1"))
                .andExpect(status().isOk())
                .andExpect(model().attributeExists("book"))
                .andExpect(view().name("edit"));
    }

    @Test
    public void testDeleteBook() throws Exception {
        doNothing().when(repo).deleteById(1);

        mockMvc.perform(get("/deletebook/1"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/viewbook"));
    }
}
