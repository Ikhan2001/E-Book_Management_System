package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.user.entity.BookDtls;

public class BookDAOImpl implements BookDAO{

	private Connection con;
	
	public BookDAOImpl(Connection con) {
		super();
		this.con=con;
	}




	public boolean addBooks(BookDtls b) {
		boolean f=false;
		try {
			String sql="insert into book_dtls(bookname,author,price,bookCategory,status,photo,user_email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			
			int i=ps.executeUpdate();
			
			if(i == 1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

	@Override
	public List<BookDtls> getAllBooks() {
		
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		
		try {
			String sql="select * from book_dtls";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery(sql);
			while(rs.next()) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				
				list.add(b);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}




	@Override
	public BookDtls getBookById(int id) {
		
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where bookId=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}




	@Override
	public boolean updateEditBooks(BookDtls b) {
		boolean f=false;
		
		try {
			
			String sql="update book_dtls set bookname=? ,author=? ,price=? ,status=? where bookId=?";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookId());
			
			int x=ps.executeUpdate();
			if(x==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}




	@Override
	public boolean deleteBooks(int id) {
		boolean f=false;
		
		try {
			
			String sql="Delete from book_dtls where bookId=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			
			int x=ps.executeUpdate();
			
			if(x==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	
	
	
	
	
	

	
}