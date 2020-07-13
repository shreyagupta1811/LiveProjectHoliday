package models;

import java.sql.*;
import java.util.*;
public class Accomodation{
	private Integer accomodationId;
	private String accomodationName;
	private String address;
	private String accomodationPicPath;
	private City cityId;

	public Accomodation(){

	}
	public Accomodation(Integer accomodationId){
		this.accomodationId = accomodationId;
	}
	public Accomodation(Integer accomodationId,String accomodationName,String address,String accomodationPicPath,City city){
		this.accomodationId=accomodationId;
		this.accomodationName=accomodationName;
		this.address=address;
		this.accomodationPicPath=accomodationPicPath;
		this.cityId=cityId;

	}

	public Accomodation(Integer accomodationId,String accomodationName,City cityId){
		this.accomodationId=accomodationId;
		this.accomodationName=accomodationName;
		this.cityId=cityId;

	}
public Accomodation collectAccomodation(){
		Accomodation accomodation = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=1234");
			String query="select * from accomodations where accomodation_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,accomodationId);
			ResultSet rst=pst.executeQuery();
			rst.next();
			accomodation= new Accomodation(rst.getInt(1),rst.getString(2),rst.getString(3),rst.getString(4),new City(rst.getInt(5)));
			System.out.println("hello accomodation");
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return accomodation;
	}
	//main package disp accomodation
	public Accomodation collectAccomodation2(Integer accomodationId){
		Accomodation accomodation = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select * from accomodations where accomodation_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,accomodationId);
			ResultSet rst=pst.executeQuery();
			while(rst.next()){
				accomodation= new Accomodation(rst.getInt(1),rst.getString(2),rst.getString(3),rst.getString(4),new City(rst.getInt(5)));
				//System.out.println("---"+rst.getInt(5));
			}
			
			System.out.println("hello accomodation");
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return accomodation;
	}
	public static ArrayList<Accomodation> collectHotel(){
		ArrayList<Accomodation> acc=new ArrayList<Accomodation>();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select * from accomodations ";
			PreparedStatement pst=con.prepareStatement(query);
			ResultSet rst=pst.executeQuery();
			while(rst.next()){
				Accomodation accomodation= new Accomodation(rst.getInt(1),rst.getString(2),new City(rst.getInt("city_id")));
				acc.add(accomodation);
			}
			//System.out.println("hello accomodation");
			return acc;
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return acc;
	}

	public static ArrayList<Accomodation> collectAcc(String acc){
		ArrayList<Accomodation> accs = new ArrayList<Accomodation>();
		try{
				Class.forName("com.mysql.jdbc.Driver");

				Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");

				String query = "select accomodation_name from accomodations where accomodation_name like '"+acc+"%'";

				PreparedStatement pst = con.prepareStatement(query);

				ResultSet rs = pst.executeQuery();

				while(rs.next()){
						Accomodation acco= new Accomodation();
						
						acco.accomodationName= rs.getString(1);

						accs.add(acco);
				}
				con.close();
		}catch(ClassNotFoundException | SQLException e){
					e.printStackTrace();
		}
		return accs;
	}
	public Accomodation(String accomodationName){
		this.accomodationName=accomodationName;
	}

	public Accomodation(String accomodationName,City cityId,String address,String accomodationPicPath){
		this.accomodationName=accomodationName;
		this.cityId=cityId;
		this.address=address;
		this.accomodationPicPath=accomodationPicPath;
	}

	
	public boolean saveRecord(){
		boolean flag=false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into accomodations (accomodation_name,address,city_id,accomodation_pic_path) value(?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,accomodationName);
			pst.setInt(3,cityId.getCityId());
			pst.setString(2,address);
			pst.setString(4,accomodationPicPath);
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
	public void setAccomodationId(Integer accomodationId){
		this. accomodationId= accomodationId;
	}
	public Integer getAccomodationId(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select accomodation_id from accomodations where accomodation_name=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,accomodationName);
			
			ResultSet rst=pst.executeQuery();
			rst.next();
			accomodationId=rst.getInt(1);
			con.close();
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();		
		}
		return accomodationId;
	}
	public Integer getAccomodationId2(){
		return accomodationId;
	}
	public void setAccomodationName(String accomodationName){
		this. accomodationName=accomodationName;
	}
	public String getAccomodationName(){
		return accomodationName;
	}
	public void setAddress(String address){
		this. address=address;
	}
	public String getAddress(){
		return address;
	}
	public void setAccomodationPicPath(String accomodationPicPath){
		this.accomodationPicPath=accomodationPicPath;
	}
	public String getAccomodationPicPath(){
		return accomodationPicPath;
	}
	public City getCity(){
		return cityId;
	}	
}