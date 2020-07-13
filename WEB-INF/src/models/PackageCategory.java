package models;

import java.sql.*;

public class PackageCategory{
	private Integer packageCategoryId;
	private String packageCategory;

	public PackageCategory(){

	}
	public PackageCategory(String packageCategory){
		this.packageCategory=packageCategory;
	}

	public void setPackageCategoryId(Integer packageCategoryId){
		this.packageCategoryId=packageCategoryId;
	}
	public Integer getPackageCategoryId(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select package_category_id from package_categories where package_category=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,packageCategory);
			
			ResultSet rst=pst.executeQuery();
			rst.next();
			packageCategoryId=rst.getInt(1);
			con.close();
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();		
		}
		return packageCategoryId;
		
	}
	public void setPackageCategory(String packageCategory){
		this.packageCategory=packageCategory;
	}
	public String getPackageCategory(){
		return packageCategory;
	}
}