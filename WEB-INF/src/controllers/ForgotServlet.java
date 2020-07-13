package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import utils.EmailSender;

public class ForgotServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		String toEmail = request.getParameter("email");
	
		String password=null;
		User user=new User(toEmail);
		RegisterOwner ru= new RegisterOwner(toEmail);
		if(user.getPassword().equals("noemail")){
			password=ru.getPassword();
		}else{
			password=user.getPassword();
		}
		String message="Your Password is:"+password;
		EmailSender.sendEmail(toEmail,message);
		request.setAttribute("messgae","Password has been send to rour email id");
		String nextPage="forgot.jsp";
		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}
