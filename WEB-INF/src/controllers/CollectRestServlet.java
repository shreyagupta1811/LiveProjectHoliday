package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.ArrayList;

public class CollectRestServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
	HttpSession session = request.getSession();
	String nextPage="allRest.jsp";
	//System.out.println(request.getParameter("ct_id"));

	String cityName=request.getParameter("ct_name");
	System.out.println("cityName:"+cityName);
	int cityId=new City(cityName).getCityId();
	if(cityId !=-1){
		ArrayList<RestRegister> rests=RestRegister.collectRest(cityId);
		session.setAttribute("cityId",cityId);
		request.setAttribute("rests",rests);
		request.setAttribute("msg","All");
	}
	else{
		nextPage="select_city.jsp";
		request.setAttribute("msg","Please select correct city from options");
	}
	
	request.getRequestDispatcher(nextPage).forward(request,response);	
	}
	
}