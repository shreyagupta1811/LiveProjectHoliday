package models;

import java.sql.*;

public class TypeCategory{
	private Integer typeCategoryId;
	private String typeCategory;
	private PackageCategory packageCategoryId;

	public TypeCategory(){

	}
	public TypeCategory( String typeCategory){
		this.typeCategory=typeCategory;
	}
	public TypeCategory(Integer typeCategoryId){
		this.typeCategoryId=typeCategoryId;
	}

	public TypeCategory(String typeCategory,PackageCategory packageCategoryId){
		this.typeCategory=typeCategory;
		this.packageCategoryId=packageCategoryId;
	}

	public void setTypeCategoryId(Integer typeCategoryId){
		this.typeCategoryId=typeCategoryId;
	}
	public Integer getTypeCategoryId(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			//String query="select type_category_id from type_categories where type_category=? and package_category_id=?";
			String query="select type_category_id from type_categories where type_category=? ";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,typeCategory);
			//pst.setInt(2,packageCategoryId.getPackageCategoryId());
			
			ResultSet rst=pst.executeQuery();
			rst.next();
			typeCategoryId=rst.getInt(1);
			con.close();
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();		
		}
		return typeCategoryId;
		
	}
	public void setTypeCategory(String typeCategory){
		this.typeCategory=typeCategory;
	}
	public String  getTypeCategory(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
	
			String query="select type_category from type_categories where type_category_id=? ";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,typeCategoryId);
			ResultSet rst=pst.executeQuery();
			while(rst.next()){
				typeCategory=rst.getString(1);
			}
			con.close();
			return typeCategory;
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();		
		}catch(Exception e){
			e.printStackTrace();
		}
		return typeCategory;
	}
	public void setPackageCategoryId(PackageCategory  packageCategoryId){
		this.packageCategoryId=packageCategoryId;
	}
	public  PackageCategory getPackageCategoryId(){
		return packageCategoryId;
	}
}