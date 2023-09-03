package com.admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.user.entity.BookDtls;

@WebServlet(name="editbook",urlPatterns = "/editbooks")
@MultipartConfig
public class EditBookServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String bookName=req.getParameter("bname");
		String author=req.getParameter("author");
		String price=req.getParameter("price");
		String status=req.getParameter("bstatus");
		
		BookDtls b=new BookDtls();
		b.setBookId(id);
		b.setBookName(bookName);
		b.setAuthor(author);
		b.setPrice(price);
		b.setStatus(status);
		
		BookDAOImpl dao=new BookDAOImpl(DBConnect.getConnection());
		boolean f=dao.updateEditBooks(b);
		String page="";
		String msg="";
		if(f) {
			msg="<font color=green >Book Update Successfully</font>";
			req.setAttribute("Msg", msg);
			page="admin/all_books.jsp";
		}else {
			msg="<font color=red >Something Wrong On Server</font>";
			req.setAttribute("Msg", msg);
			page="admin/all_books.jsp";
			
		}
		RequestDispatcher rd=req.getRequestDispatcher(page);
		rd.forward(req, resp);
	}
	
}
