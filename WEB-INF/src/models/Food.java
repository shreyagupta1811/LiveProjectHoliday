package models;

import java.sql.*;
import java.util.ArrayList;

public class Food{
	private Integer foodId;
	private String foodName;
	private Category categoryId;

	public Food(String foodName){
		this.foodName=foodName;
	}
	public static ArrayList<Food> collectFood(Category category){
		ArrayList<Food> foods = new ArrayList<Food>();
	try{
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select food_name from foods where category_id=?";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1,category.getCategoryId());
			ResultSet rst=pst.executeQuery();
			while(rst.next()){
				foods.add(new Food(rst.getString(1)));
			}
		}catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return foods;
	}

	public void setFoodId(Integer foodId){
			this.foodId=foodId;
	}
	public Integer getFoodId(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select food_id from foods where food_name=?";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1,foodName);
			ResultSet rst=pst.executeQuery();
			rst.next();
			foodId=rst.getInt(1);
			
		}catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
			return foodId;
	}

	public void setFoodName(String foodName){
			this.foodName=foodName;
	}
	public String getFoodName(){
			return foodName;
	}

	public void setCategoryId(Category categoryId){
			this.categoryId=categoryId;
	}
	public Category getCategoryId(){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
				String query="select category_id from foods where food_name=?";
				PreparedStatement pst=con.prepareStatement(query);
				pst.setString(1,foodName);
				ResultSet rst=pst.executeQuery();
				rst.next();
				categoryId=new Category(rst.getInt(1));
			}
			catch (ClassNotFoundException|SQLException e){
				e.printStackTrace();
			}
			return categoryId;
	}

}