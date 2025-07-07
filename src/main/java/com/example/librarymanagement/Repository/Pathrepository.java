package com.example.librarymanagement.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.librarymanagement.PathModel.PathModel;

public interface Pathrepository extends JpaRepository<PathModel, Integer> {
    
	PathModel findByBookid(int bookid);

}
