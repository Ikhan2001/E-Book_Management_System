package com.DAO;

import java.util.List;

import com.user.entity.BookDtls;

public interface BookDAO {
	
	public boolean addBooks(BookDtls b);
	
	 public List<BookDtls> getAllBooks();
	 
	 public BookDtls getBookById(int id);
	 
	 public boolean updateEditBooks(BookDtls b);
	 
	 public boolean deleteBooks(int id);
}