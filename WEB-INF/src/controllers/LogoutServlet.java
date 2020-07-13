package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class LogoutServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		String nextPage="index.jsp";
		HttpSession session = request.getSession();

		session.invalidate();
		System.out.println("session expire you logout");
		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}