package com.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.ecommerce.entities.BookData;
import com.ecommerce.repository.BookDataDb;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/books")
public class BookRestController {

    @Autowired
    private BookDataDb bookDataDb;

    @GetMapping
    public List<BookData> getAllBooks() {
        return (List<BookData>) bookDataDb.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<BookData> getBookById(@PathVariable int id) {
        try {
            Optional<BookData> bookDataOptional = bookDataDb.findById(id);
            if (bookDataOptional.isPresent()) {
                return ResponseEntity.ok(bookDataOptional.get());
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @PostMapping
    public ResponseEntity<BookData> addBook(@RequestBody BookData bookData) {
        try {
            BookData savedBook = bookDataDb.save(bookData);
            return ResponseEntity.status(HttpStatus.CREATED).body(savedBook);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<BookData> updateBook(@PathVariable int id, @RequestBody BookData bookData) {
        try {
            if (bookDataDb.existsById(id)) {
                bookData.setId(id);
                BookData updatedBook = bookDataDb.save(bookData);
                return ResponseEntity.ok(updatedBook);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteBook(@PathVariable int id) {
        try {
            if (bookDataDb.existsById(id)) {
                bookDataDb.deleteById(id);
                return ResponseEntity.noContent().build();
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}
