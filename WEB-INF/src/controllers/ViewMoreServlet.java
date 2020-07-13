package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.*;

public class ViewMoreServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		HttpSession session = request.getSession();
		System.out.println(request.getParameter("rest_id"));
		Integer restId=Integer.parseInt(request.getParameter("rest_id"));
		System.out.println(restId);
		RestRegister rr = new RestRegister();
		RestRegister records=rr.collectRest3(restId);
		session.setAttribute("records",records);

		RestFood rf=new RestFood();
		ArrayList<RestFood> menu=rf.collectMenu(restId);

		session.setAttribute("menu",menu);

		RestPic rp=new RestPic();
		ArrayList<String> path= rp. collectRestPics(restId);

		session.setAttribute("path",path);
		//ArrayList<String> path=(ArrayList)session.getAttribute("path");
		//System.out.println(path.get(0));

		request.getRequestDispatcher("main_rest.jsp").forward(request,response);
	}
}