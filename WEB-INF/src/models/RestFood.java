package models;
import java.util.ArrayList;
import java.sql.*;
public class RestFood{
	private Integer restFoodId;
	private RestCategory restCategoryId;
	private Food foodId;
	private Integer foodPrice;
	private String tempFoodName;

	public RestFood(RestCategory restCategoryId, Food foodId, Integer foodPrice){
		this.restCategoryId=restCategoryId;
		this.foodId=foodId;
		this.foodPrice=foodPrice;
	}
	public RestFood(){

	}
	public RestFood(String tempFoodName, Integer foodPrice){
		this.foodPrice=foodPrice;
		this.tempFoodName=tempFoodName;
	}

	public boolean saveFood(){
		boolean flag=false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into rest_foods (rest_category_id,food_id,food_price) value (?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,restCategoryId.getRestCategoryId());
			pst.setInt(2,foodId.getFoodId());
			pst.setInt(3,foodPrice);
			int i=pst.executeUpdate();
			if(i==1){
				flag=true;
			}
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return flag;
	}
	/*public static ArrayList<RestFood> getFoods(){
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor?user=root&password=1234");
			String query="select * from rest_foods where rest_category_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.executeQuery();

		}catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
	} */
	public void setRestFoodId( Integer restFoodId){
			this.restFoodId=restFoodId;
	}
	public Integer getRestFoodId(){
		return restFoodId;
	}

	public void setRestCategoryId( RestCategory restCategoryId){
			this.restCategoryId=restCategoryId;
	}
	public RestCategory getRestCategoryId(){
		return restCategoryId;
	}

	public void setFoodId( Food foodId){
			this.foodId=foodId;
	}
	public Food getFoodId(){
		return foodId;
	}

	public void setFoodPrice( Integer foodPrice){
			this.foodPrice=foodPrice;
	}
	public Integer getFoodPrice(){
		return foodPrice;
	}
	public void setTempFoodName( String tempFoodName){
			this.tempFoodName=tempFoodName;
	}
	public String getTempFoodName(){
		return tempFoodName;
	}
	
	public static ArrayList<RestFood> collectMenu(int id){
		ArrayList<RestFood> menus=new ArrayList<RestFood>();
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
		String query="select food_name,food_price from rest_foods natural join foods where rest_category_id IN(select rest_category_id from rest_categories where rest_register_id=?); ";
		PreparedStatement pst=con.prepareStatement(query);
		pst.setInt(1,id);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			RestFood menu=new RestFood(rs.getString("food_name"),rs.getInt("food_price"));
			menus.add(menu);
			}
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return menus;
    }

}
