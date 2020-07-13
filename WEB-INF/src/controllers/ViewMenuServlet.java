package controllers;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.ArrayList;

public class ViewMenuServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session=request.getSession();
		RestRegister rr=new RestRegister((int)session.getAttribute("ownerId"));
		int i=rr.getRestRegisterId();
		ArrayList<RestFood> menus=RestFood.collectMenu(i);
		request.setAttribute("menus",menus);
		request.getRequestDispatcher("show_menu.jsp").forward(request,response);
	}
}