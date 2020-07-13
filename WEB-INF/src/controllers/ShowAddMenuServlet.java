package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

public class ShowAddMenuServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		HttpSession session = request.getSession();
		Integer ownerId=(Integer)session.getAttribute("ownerId");

		/*RegisterOwner ro=new RegisterOwner(ownerId);
		String ownerName=ro.getOwnerName();
		session.setAttribute("ownerName",ownerName);*/

		System.out.println(ownerId+"insam11111111111111");
		//System.out.println(request.getQueryString());
		request.getRequestDispatcher("add_menu.jsp").forward(request,response);
	}
}