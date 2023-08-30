package com.user.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.user.DAO.UserDAOImpl;
import com.user.entity.User;

@WebServlet(name="login",urlPatterns = {"/login.ik"})
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		System.out.println(email+" "+password);
		UserDAOImpl dao=new UserDAOImpl(DBConnect.getConnection());
		HttpSession session=req.getSession();
		
		if("admin@gmail.com".equals(email) && "admin".equals(password)) {
			User us=new User();
			session.setAttribute("userobj", us);
			resp.sendRedirect("admin/home.jsp");
		}else {
			
			User us=dao.login(email, password);
			if(us != null) {
				session.setAttribute("userobj", us);
				resp.sendRedirect("home.jsp");
			}else {
				String msg="<font color=red>Email & Password is Invalid !!!</font>";
				req.setAttribute("Msg", msg);
				String page="login.jsp";
				RequestDispatcher rd=req.getRequestDispatcher(page);
				rd.forward(req, resp);
			}
		}
		
	}

}
