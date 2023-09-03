package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.user.entity.BookDtls;

import javax.servlet.http.*;
import java.lang.String;

@WebServlet(name="addbooks",urlPatterns = "/add_books")
@MultipartConfig
public class BookAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String bookName=req.getParameter("bname");
		String author=req.getParameter("author");
		String price=req.getParameter("price");
		String category=req.getParameter("category");
		String status=req.getParameter("bstatus");
		Part part=req.getPart("bimg");
		String fileName=part.getSubmittedFileName();
		
		
		BookDtls b=new BookDtls(bookName,author,price,category,status,fileName,"admin");
		System.out.println(b);
		BookDAOImpl dao=new BookDAOImpl(DBConnect.getConnection());
		
		String path=getServletContext().getRealPath("")+"books";
		
		File file=new File(path);
		part.write(path + File.separator + fileName);
		
		
		boolean f=dao.addBooks(b);
		
		HttpSession session=req.getSession();
		String page="";
		if(f) {
			String Msg="<font color=green >Book Add Successfully</font>";
			req.setAttribute("Msg", Msg);
			page="admin/add_books.jsp";
			RequestDispatcher rd=req.getRequestDispatcher(page);
			rd.forward(req, resp);
		}else {
			String Msg="<font color=red >Something wrong on server</font>";
			req.setAttribute("Msg",Msg);
			page="admin/add_books.jsp";
			RequestDispatcher rd=req.getRequestDispatcher(page);
			rd.forward(req, resp);
		}
		
	}

	
}