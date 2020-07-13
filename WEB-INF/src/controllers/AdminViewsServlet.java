package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

import java.sql.*;
import java.util.List;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import java.util.ArrayList;
import models.*;
public class AdminViewsServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		String nextPage="adminHome.jsp";

		int id=Integer.parseInt(request.getParameter("id"));
		if(id==1){
			
			ArrayList<RestRegister> rests=RestRegister.collectRest5();
			if(rests !=null){
				request.setAttribute("rests",rests);
				nextPage="view_rest.jsp";
			}
			else{
				request.setAttribute("msg","No records Found!!!!!");
			}
		}else if(id==2){
			ArrayList <Packagee> packs=Packagee.collectPack();
			nextPage="view_pack.jsp";
			if(packs !=null){
				request.setAttribute("packs",packs);
			}
			else{
				request.setAttribute("msg","No records Found!!!!!");
			}
		}
		else if(id==3){
			nextPage="view_hotel.jsp";
			ArrayList<Accomodation> hotels= Accomodation.collectHotel();
			if(hotels !=null){
				request.setAttribute("hotels",hotels);
				
			}
			else{
				request.setAttribute("msg","No records Found!!!!!");
				System.out.println("2");
			}
		}else if(id==4){
			nextPage="view_user.jsp";
			ArrayList<User> users= User.collectUser();
			if(!users.isEmpty()){
				request.setAttribute("users",users);
				System.out.println("1");
			}
			else{
				request.setAttribute("msg","No records Found!!!!!");
				System.out.println("2");
			}
		}
		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}
