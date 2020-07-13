package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.ArrayList;

public class CollectCategRestServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
	HttpSession session = request.getSession();
	String nextPage="allRest.jsp";
	//System.out.println(request.getParameter("ct_id"));
	
	String categ=request.getParameter("categ");
	
	if(categ.equals("all")){
		int id = (int)session.getAttribute("cityId");
		ArrayList<RestRegister> rests=RestRegister.collectRest(id);
		request.setAttribute("rests",rests);
	}
	else{
		System.out.println(categ);
		int id = (int)session.getAttribute("cityId");
		int categId= new Category(categ).getCategoryId();
		ArrayList<RestRegister> rests=RestRegister.collectRest4(categId,id);
		request.setAttribute("rests",rests);
		
	}
	request.setAttribute("msg",categ);
	request.getRequestDispatcher(nextPage).forward(request,response);	
	}
	
}