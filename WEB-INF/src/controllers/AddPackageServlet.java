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

public class AddPackageServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		String nextPage="adminHome.jsp";

		String pacName="";
		//String category="";
		String typeCategory="" ;
		String accomodation="";
		int days=0;
		int cost=0;
		String sePoint="";
		String food="";
		String placeVisit="";
		String transport="";
		String details="";
		String contactNo="";
		String dispImg="pac_img/";
		String [] pics =new String[100];
		int i=-1;
		int size=100;
		
		if(ServletFileUpload.isMultipartContent(request)){
			DiskFileItemFactory dfif = new DiskFileItemFactory();
			ServletFileUpload sfu = new ServletFileUpload(dfif);
			try{
				List<FileItem> fileItems = sfu.parseRequest(request);
				ServletContext context = getServletContext();
				String realPath = context.getRealPath("/");
				realPath=realPath+"pac_img";
				//System.out.println(fileItems.size());
				for(FileItem fileItem:fileItems){
					if(fileItem.isFormField()){
						if(fileItem.getFieldName().equals("pacname")){
							pacName=fileItem.getString();
							System.out.println(pacName);
						}
						
						else if(fileItem.getFieldName().equals("typecategory")){
							 typeCategory =fileItem.getString();
							System.out.println(typeCategory);
						}
						else if(fileItem.getFieldName().equals("accomodation")){
							accomodation = fileItem.getString();
							System.out.println(accomodation);
						}
						else if(fileItem.getFieldName().equals("day")){
							days =Integer.parseInt( fileItem.getString());
							System.out.println(days);
						}
						else if(fileItem.getFieldName().equals("cost")){
							cost =Integer.parseInt( fileItem.getString());
							System.out.println(cost);
						}
						else if(fileItem.getFieldName().equals("sepoint")){
							sePoint = fileItem.getString();
							System.out.println(sePoint);
						}
						else if(fileItem.getFieldName().equals("food")){
							food = fileItem.getString();
							System.out.println(food);
						}
						else if(fileItem.getFieldName().equals("placevisit")){
							placeVisit = fileItem.getString();
							System.out.println(placeVisit);
						}
						else if(fileItem.getFieldName().equals("transport")){
							transport = fileItem.getString();
							System.out.println(transport);
						}
						else if(fileItem.getFieldName().equals("details")){
							details = fileItem.getString();
							System.out.println(details);
						}
						else{
							contactNo = fileItem.getString();
							System.out.println(contactNo);
						}
					}
					else{
						if(fileItem.getFieldName().equals("display_image")){
							//System.out.println(fileItem.getName()+"@@@@@@@@");
							File file = new File(realPath,fileItem.getName());
							try{
								dispImg=dispImg+fileItem.getName();
								fileItem.write(file);
							}catch (Exception e){
								e.printStackTrace();
							}
						}
						else{
							File file= new File (realPath,fileItem.getName());
							i++;
							try{
								fileItem.write(file);
								String img="pac_img/";
								img=img+fileItem.getName();
								pics[i]=img;
								System.out.println(file.getAbsolutePath());
								//RestPic rp= new RestPic(file.getAbsolutePath(),restRegister);
								System.out.println("i="+i);
							}catch (Exception e){
								e.printStackTrace();
							}
						}
					}
				}
				
				//PackageCategory paccat = new PackageCategory(category);
				//TypeCategory typecat = new TypeCategory(typeCategory,paccat);
				TypeCategory typecat = new TypeCategory(typeCategory);
				Packagee packagee = new Packagee(pacName,typecat,days,cost,sePoint,new Accomodation(accomodation),food,placeVisit,transport,details,contactNo,dispImg);
				packagee.saveRecord();
				size=i+1;
					for(int j=0;j<size;j++){
						PackagePic pacpic=new PackagePic(pics[j],packagee);
						pacpic.savePics();
					}
			}catch(FileUploadException e){
				e.printStackTrace();
			}
		}

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}
