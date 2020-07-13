package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.ArrayList;

public class ShowPackServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
	HttpSession session = request.getSession();
	String nextPage="allPack.jsp";
	//System.out.println(request.getParameter("ct_id"));

	ArrayList<Packagee> packs=Packagee.collectAllPack();
	if(!packs.isEmpty()){
		request.setAttribute("packs",packs);
		request.setAttribute("cat","ALL");
	}else{
		
		request.setAttribute("msg","Sorry!!!! No packages available");
	}
	
	
	request.getRequestDispatcher(nextPage).forward(request,response);	
	}
	
}