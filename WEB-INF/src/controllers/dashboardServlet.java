package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.ArrayList;

public class dashboardServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
	HttpSession session = request.getSession();
	String nextPage="dashboard.jsp";
	
	Integer ownerId=(Integer)session.getAttribute("ownerId");

	RestRegister restregister=new RestRegister();
	//Integer  restRegister=restregister.getRestRegisterId()
	ArrayList<RestRegister> restRegister=RestRegister.collectRest2(ownerId);
	
	session.setAttribute("restRegister",restRegister);
		
	request.getRequestDispatcher(nextPage).forward(request,response);
		
	}
	
}