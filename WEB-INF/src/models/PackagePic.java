package models;

import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.ArrayList;

public class PackagePic{
	private Integer packagePicId;
	private String picPath;
	private String picDetails;
	private Packagee packageId;

	public PackagePic(Packagee packageId){
		this.packageId=packageId;

	}
	public PackagePic(){
	
	}
	public PackagePic(String picPath,Packagee packageId){
		this.picPath=picPath;
		this.packageId=packageId;
	}

	public void savePics(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into package_pics(pic_path,package_id) value(?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			System.out.println(picPath);
			pst.setString(1,picPath); 
			pst.setInt(2,packageId.getPackageId()); 
			int i=pst.executeUpdate();
			con.close();
		}
		catch (ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
	}

	public  ArrayList collectPics(Integer PackageId){
		ArrayList <String> pics= new ArrayList<String>(); 
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select pic_path from package_pics where package_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,PackageId);  
			ResultSet rst =pst.executeQuery();
			while(rst.next()){
				pics.add(rst.getString(1));
			}
			con.close();
		}
		catch (ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}catch(Exception e ){
			e.printStackTrace();
		}
		return pics;
	}
	public void setPackagePicId(Integer packagePicId){
		this.packagePicId=packagePicId;
	}
	public Integer getPackagePicId(){
		return packagePicId;
	}
	public void setPicPath(String picPath){
		this.picPath=picPath;
	}
	public String getPicPath(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select pic_path from package_pics where package_Id=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,packageId.getPackageId()); 
			int i=pst.executeUpdate();
			con.close();
		}
		catch (ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		return picPath;
	}
	public void setPicDetails(String picDetails){
		this.picDetails=picDetails;
	}
	public String getPicDetails(){
		return picDetails;
	}
	public void setPackageId(Packagee packageId){
		this.packageId=packageId;
	}
	public Packagee getPackageId(){
		return packageId;
	}
}