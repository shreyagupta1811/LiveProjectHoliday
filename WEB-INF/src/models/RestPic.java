package models;
import java.sql.*;
import java.util.*;
public class RestPic {
	private Integer restPicId;
	private String picPath;
	private RestRegister restRegisterId;

	public RestPic(){
		
	}
	
	public RestPic(String picPath,RestRegister restRegisterId){
		this.picPath=picPath;
		this.restRegisterId=restRegisterId;
	}
	
	public void savePics(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into rest_pics(pic_path,rest_register_id) value(?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,picPath); 
			pst.setInt(2,restRegisterId.getRestRegisterId()); 
			int i=pst.executeUpdate();
			con.close();
		}
		catch (ClassNotFoundException |SQLException e){
			e.printStackTrace();
		}
	}

	public static ArrayList collectPics(Integer restRegisterId){
		ArrayList <String> pics= new ArrayList<String>(); 
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select pic_path from rest_pics where rest_register_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			
			pst.setInt(1,restRegisterId);  
			ResultSet rst =pst.executeQuery();
			while(rst.next()){
				pics.add(rst.getString(1));
			}
			con.close();
		}
		catch (ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		return pics;
	}
	public static ArrayList collectRestPics(Integer restRegisterId){
		ArrayList <String> pics= new ArrayList<String>(); 
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select pic_path from rest_pics where rest_register_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			
			pst.setInt(1,restRegisterId);  
			ResultSet rst =pst.executeQuery();
			while(rst.next()){
				pics.add(rst.getString(1));
			}
			con.close();
		}
		catch (ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		return pics;
	}

	public void setRestPicId(Integer restPicId){
		this.restPicId=restPicId;
	}
	public Integer getRestPicId(){
		return restPicId;
	}

	public void setPicPath(String picPath){
		this.picPath = picPath;
	}
	public String getPicPath(){
		return picPath;
	}
	public void setRestRegisterId(RestRegister restRegisterId){
		this.restRegisterId= restRegisterId;
	}
	public RestRegister getRestRegisterId(){
		return restRegisterId;
	}
}