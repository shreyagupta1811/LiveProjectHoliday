package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

import java.sql.*;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

import models.*;

import java.util.List;


import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;

public class RestaurantServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session= request.getSession();
		//String restName = request.getParameter("restName");
		//String restAddress = request.getParameter("restAddress");
		//String restContact = request.getParameter("restContact");
		String nextPage="rest_register.jsp";
		String restName="";
		String restAddress="";
		String city="";
		String restContact="";
		Integer ownerId=0;
		String opTime="";
		String clTime="";
		String category1=null;
		String category2=null;
		String category3=null;
		String category4=null;
		String dispImg="";
		RestRegister restRegister=null;
		int size=100;
		int i=-1;
		String [] pics =new String[100];
		
		
		if(ServletFileUpload.isMultipartContent(request)){
			DiskFileItemFactory dfif=new DiskFileItemFactory();
			ServletFileUpload sfu=new ServletFileUpload(dfif);
			try{
				List<FileItem> fileItems=sfu.parseRequest(request);
				String realPath=getServletContext().getRealPath("/");
				realPath+="images";
				System.out.println(fileItems.size());
				for(FileItem fileItem:fileItems){
					//System.out.println(fileItem.getFieldName());
					if(fileItem.isFormField()){
						if(fileItem.getFieldName().equals("restName")){
							restName=fileItem.getString();
							System.out.println(restName);
						}
						else if(fileItem.getFieldName().equals("city")){
							city=fileItem.getString();
							System.out.println(city);
							//System.out.println("hello1");
							
						}
						else if(fileItem.getFieldName().equals("restAddress")){
							restAddress=fileItem.getString();
							System.out.println(restAddress);
							//System.out.println("hello3");
						}
						else if(fileItem.getFieldName().equals("restContact")){
							restContact=fileItem.getString();
							System.out.println(restContact);
						}
						else if(fileItem.getFieldName().equals("ownerId")){
							ownerId=Integer.parseInt(fileItem.getString());
							System.out.println(ownerId+"```");
						}
						else if(fileItem.getFieldName().equals("optime")){
							 opTime=fileItem.getString();
							 System.out.println(opTime);
						}
						else if(fileItem.getFieldName().equals("category1")){
							 category1=fileItem.getString();
							 System.out.println(category1);
						}
						else if(fileItem.getFieldName().equals("category2")){
							 category2=fileItem.getString();
							 System.out.println(category2);
						}
						else if(fileItem.getFieldName().equals("category3")){
							 category3=fileItem.getString();
							 System.out.println(category3);
						}
						else if(fileItem.getFieldName().equals("category4")){
							 category4=fileItem.getString();
							 System.out.println(category4);
						}
						else{
							 clTime=fileItem.getString();
							 System.out.println(clTime);
							 //clSystem.out.println("hello4");
						}
						//restRegister=new RestRegister(restName,restAddress,restContact,ownerId,new City(city),opTime,clTime);
						//restRegister.saveRecord();
					}
					else{
						if(fileItem.getFieldName().equals("disp_img")){
							System.out.println(fileItem.getName()+"@@@@@@@@");
							File file = new File(realPath,fileItem.getName());
							try{
								dispImg=file.getAbsolutePath();
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
								pics[i]=file.getAbsolutePath();
								System.out.println(file.getAbsolutePath());
								//RestPic rp= new RestPic(file.getAbsolutePath(),restRegister);
								System.out.println("i="+i);
							}catch (Exception e){
								e.printStackTrace();
							}
						}

					}
					
				}	
					boolean flag = true;
					String errorMessage = "";

					if(restName.length()<3){
						flag = false;
						errorMessage = errorMessage + "Name must be at least 3 characters length<br />";
					}


					int addressLength = restAddress.length(); //error message should be used.
					if(addressLength<6){
						flag = false;
						errorMessage = errorMessage + "Adress must be at least 6 charcters<br />";
					}

					int ContactLength = restContact.length(); 
					if(ContactLength<10 || ContactLength>10 ){
						flag = false;
						errorMessage = errorMessage + "contact no. must be at 10 number<br/>";
					}
					
					restRegister=new RestRegister(restName,restAddress,restContact,ownerId,new City(city),opTime,clTime,dispImg);
					restRegister.saveRecord();
					if(flag){
						if(restRegister.saveRecord()){
							nextPage="my_rest_home.jsp";
						}
					}else{
						request.setAttribute("err_msg",errorMessage);
					}
					
					size=i+1;
					for(int j=0;j<size;j++){
						//System.out.println(j+"pic no:"+pics[j]);
						RestPic rp=new RestPic(pics[j],restRegister);
						rp.savePics();
					}
					if(category1!=null){
						System.out.println(category1);
						Category category =new Category(category1);
						RestCategory restCat=new RestCategory(restRegister,category);
						System.out.println("chl gaya");
						restCat.save();
					}
					 if(category2!=null){
						Category category=new Category(category2);
						RestCategory restCat=new RestCategory(restRegister,category);
						restCat.save();
						System.out.println("chl gaya1");
					}
					 if(category3!=null){
						Category category=new Category(category3);
						RestCategory restCat=new RestCategory(restRegister,category);
						restCat.save();
						System.out.println("chl gaya2");
					}
					 if(category4!=null){
						Category category=new Category(category4);
						RestCategory restCat=new RestCategory(restRegister,category);
						restCat.save();
						System.out.println("chl gaya3");
					}
				}catch(FileUploadException e){
				e.printStackTrace();
			}

		}

		
		session.setAttribute("ownerId",ownerId);
		//System.out.println(flag+" ~~ "+nextPage);

		request.getRequestDispatcher("my_rest_home.jsp").forward(request,response);
	}
}