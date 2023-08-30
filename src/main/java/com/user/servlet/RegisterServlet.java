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

@WebServlet(name="register", urlPatterns = {"/register.ik"})
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fname=req.getParameter("fname");
		String email=req.getParameter("email");
		String phno=req.getParameter("phno");
		String password=req.getParameter("password");
		String check=req.getParameter("check");
		
		System.out.println(fname +" "+email+" "+phno+" "+password+" "+check);
		
		HttpSession session=req.getSession();
		String page="";
		if(check !=null) {
			User us=new User();
			
			us.setName(fname);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getConnection());
			boolean f=dao.userRegister(us);
			
			if(true) {
				//System.out.println("User inserted Successfully");
				String msg="<font color=green>Registration Successfully...</font>";
				req.setAttribute("Msg",msg );
				page="register.jsp";
				
			}else {
				//System.out.println("Something went wrong on Server");
				String msg="<font color=red>Something went wrong on Server</font>";
				req.setAttribute("Msg", msg);
				page="register.jsp";
			}
		}else {
			//System.out.println("Please Click Agree On Terms & Cond.");
			String msg="<font color=red>Please Click Agree On Terms & Cond.</font>";
			req.setAttribute("Msg", msg);
			page="register.jsp";
		}
		
		RequestDispatcher rd=req.getRequestDispatcher(page);
		rd.forward(req, resp);
		
	}
	
	

}
