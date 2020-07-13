package models;

import java.sql.*;

public class RestCategory{
	private Integer restCategoryId;
	private RestRegister restRegisterId;
	private Category categoryId;

	public RestCategory(RestRegister restRegisterId,Category categoryId){
		this.restRegisterId=restRegisterId;
		this.categoryId=categoryId;
	}

	public boolean save(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into rest_categories(rest_register_id,category_id) value(?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,restRegisterId.getRestRegisterId());
			System.out.println(categoryId.getCategoryId());
			pst.setInt(2,categoryId.getCategoryId());
			pst.executeUpdate();
			con.close();
		}catch(ClassNotFoundException | SQLException e){
				e.printStackTrace();
		}
		return true;
	}

	public void setRestCategoryId(Integer restaurantCategoryId){
			this.restCategoryId=restCategoryId;
	}
	public Integer getRestCategoryId(){
			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select rest_category_id from rest_categories where rest_register_id=? and category_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,restRegisterId.getRestRegisterId());			
			pst.setInt(2,categoryId.getCateg());			
			
			ResultSet rst = pst.executeQuery();
			rst.next();
			restCategoryId=rst.getInt(1);
			con.close();
		}catch(ClassNotFoundException | SQLException e){
				e.printStackTrace();
		}
			return restCategoryId;
	}

	public void setRestRegistertId(RestRegister restRegisterId){
			this.restRegisterId=restRegisterId;
	}
	public RestRegister getRestRegisterId(){
			return restRegisterId;
	}

	public void setCategoryId(Category categoryId){
			this.categoryId=categoryId;
	}
	public Category getCategoryId(){
			return categoryId;
	}
}