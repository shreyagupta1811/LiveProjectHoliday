package models;

import java.sql.*;
import java.util.*;
public class Category{
	private Integer categoryId;
	private String categoryName;
	
	public Category(String categoryName){
		this.categoryName=categoryName;
	}

	public Category(Integer categoryId){
		this.categoryId=categoryId;
	}
	public static ArrayList<Category> collectCategory(){
		ArrayList<Category> categories = new ArrayList<Category>();
				try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
					String query= "select  category_name from categories";
					PreparedStatement pst = con.prepareStatement(query);
					ResultSet rs = pst.executeQuery();
					while(rs.next()){
							categories.add(new Category(rs.getString(1)));
					}
					con.close();
				}catch(ClassNotFoundException | SQLException e){
						e.printStackTrace();
				}
				return categories;
	}
	
	public void setCategoryId(Integer categoryId){

			this.categoryId=categoryId;
	}
	
	public Integer getCateg(){
		return categoryId;//second method for gettting id ,It contain only Id which is get byfood table
	}
	public Integer getCategoryId(){
		try{
			//System.out.println("inside categ"+categoryName);
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select category_id from categories where category_name=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,categoryName);
			ResultSet rst=pst.executeQuery();
			rst.next();
			categoryId=rst.getInt(1);
			//System.out.println("inside categ"+categoryId);
			con.close();
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();		
		}
		return categoryId;
	}


	public void setCategoryName(String categoryName){
			this.categoryName=categoryName;
	}
	public String getCategoryName(){
			return categoryName;
	}
}