package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.ArrayList;

public class PackageCategoryServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
	HttpSession session = request.getSession();
	String nextPage="allPack.jsp";
	//System.out.println(request.getParameter("ct_id"));
	
	int categ=Integer.parseInt(request.getParameter("categ"));
	
	if(categ==0){
		ArrayList<Packagee> packs=Packagee.collectAllPack();
		if(!packs.isEmpty()){
			request.setAttribute("packs",packs);
			request.setAttribute("cat","All");
		}else{
			
			request.setAttribute("msg","Sorry!!!! No packages available");
		}
	
	}
	else{
		//System.out.println(categ);
		ArrayList<Packagee> packs=Packagee.collectPack2(categ);
		
		if(!packs.isEmpty()){
			request.setAttribute("packs",packs);
			String cat =new TypeCategory(categ).getTypeCategory();
			request.setAttribute("cat",cat);
		}
		else{
			request.setAttribute("msg","Sorry!!!! No packages available of selected category");
		}
		
	}
	
	//request.setAttribute("msg",categ);
	request.getRequestDispatcher(nextPage).forward(request,response);	
	}
	
}