package com.admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class BooksDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		BookDAOImpl dao=new BookDAOImpl(DBConnect.getConnection());
		boolean f=dao.deleteBooks(id);
		
		String page="";
		String msg="";
		if(f) {
			msg="<font color=green >Book Delete Successfully</font>";
			resp.sendRedirect("admin/all_books.jsp");
		}else {
			msg="<font color=red >Something Wrong On Server</font>";
			resp.sendRedirect("admin/all_books.jsp");
			
		}
	}
	
}
