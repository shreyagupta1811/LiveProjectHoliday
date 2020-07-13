package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;
import java.util.*;

public class MainPackageServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		String nextPage="main_pack.jsp";
		HttpSession session = request.getSession();
		Integer packId=Integer.parseInt(request.getParameter("pack_id"));
		System.out.println(packId);

		Packagee pack=new Packagee();
		Packagee records=pack.collectPack3(packId);
		session.setAttribute("records",records);

		PackagePic pacpic=new PackagePic();
		ArrayList<PackagePic> path=pacpic.collectPics(packId);
		if(!path.isEmpty()){
		session.setAttribute("path",path);
		}else{
			nextPage="error.jsp";
		}
		
		Accomodation acc = new Accomodation();
		Accomodation record=acc.collectAccomodation2(records.getAccomodationId().getAccomodationId2());
		System.out.println(record.getAccomodationPicPath());
		session.setAttribute("record",record);

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}