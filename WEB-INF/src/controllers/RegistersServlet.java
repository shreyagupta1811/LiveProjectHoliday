package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;


 public class RegistersServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		String nextPage=null;
		String logType=request.getParameter("logType");
		if(logType.equals("owner")){
			//System.out.println(logType);
			HttpSession session = request.getSession();
			nextPage="";
			String name = request.getParameter("uname");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			//System.out.println(name+" "+email+" "+password);
			RegisterOwner owner=new RegisterOwner(name,email,password);
			if(owner.saveRecord()){
				nextPage="login.jsp";
				//System.out.println(nextPage);
			}
			else{
				nextPage="register.jsp";
				String message="Unable to register";
				request.setAttribute(message,"message");
				//request.getRequestDispatcher(nextPage).forward(request,response);
			}
			//String ownerName=owner.getOwnerName();
			//session.setAttribute("ownername",ownerName);
			//System.out.println(ownerName+"inside ols");
			//request.getRequestDispatcher(nextPage).forward(request,response);

		}
		else{
			System.out.println(logType);
			nextPage=" ";
			HttpSession session=request.getSession();
			String userName = request.getParameter("uname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			User user=new User(userName,email,password);
			if(user.saveRecord()){
				nextPage="index.jsp";
				String uName=user.getUserName();
				session.setAttribute("username",uName);
				//System.out.println(userName+"inside ols");
				//request.getRequestDispatcher(nextPage).forward(request,response);
			}
			else{
				nextPage="register.jsp";
				String message="Unable to register";
				request.setAttribute(message,"message");
				//request.getRequestDispatcher(nextPage).forward(request,response);
			}
		
		}
		request.getRequestDispatcher(nextPage).forward(request,response);
			}

}