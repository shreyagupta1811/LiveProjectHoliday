package models;
import java.sql.*;

import java.util.ArrayList;

import org.jasypt.util.password.StrongPasswordEncryptor;
public class RestRegister{
	private Integer restRegisterId;
	private String restName;
	private String restAddress;
	private String restContact;
	private Integer ownerId;
	private City city; 
	private String opTime;
	private String clTime;
	private String dispImg;
	public RestRegister(){

    }

	public RestRegister(String restName ,String dispImg ){
		this.restName=restName;
		this.dispImg=dispImg;
    }
    public RestRegister(String restName ,String restAddress, String restContact,Integer ownerId,City city,String opTime,String clTime,String dispImg ){
		this.restName=restName;
		this.restAddress=restAddress;
		this.restContact=restContact;
		this.ownerId=ownerId;
		this.city=city;
		this.opTime=opTime;
		this.clTime=clTime;
		this.dispImg=dispImg;
    }
	public RestRegister(Integer restRegisterId , String restName ,String restAddress, String restContact,Integer ownerId,City city,String opTime,String clTime,String dispImg ){
		this.restRegisterId = restRegisterId;
		this.restName=restName;
		this.restAddress=restAddress;
		this.restContact=restContact;
		this.ownerId=ownerId;
		this.city=city;
		this.opTime=opTime;
		this.clTime=clTime;
		this.dispImg=dispImg;
    }
	public RestRegister(Integer restRegisterId , String restName ,Integer ownerId,City city){
		this.restRegisterId = restRegisterId;
		this.restName=restName;
		this.ownerId=ownerId;
		this.city=city;
    }
	public RestRegister(String restName ,String restAddress, String restContact){
		this.restName=restName;
		this.restAddress=restAddress;
		this.restContact=restContact;
    }
	
	public RestRegister(Integer ownerId){
		this.ownerId=ownerId;
	}

    public boolean saveRecord(){
		boolean flag=false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into rest_registers (rest_name,rest_address,rest_contact,owner_id,city_id,opTime,clTime,disp_img) value(?,?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,restName); 
			pst.setString(2,restAddress); 
			pst.setString(3,restContact);
			pst.setInt(4,ownerId);
			pst.setInt(5,city.getCityId());
			pst.setString(6,opTime);
			pst.setString(7,clTime);
			pst.setString(8,dispImg);
			int i=pst.executeUpdate();
			if(i==1){
				flag=true;
			}
			con.close();
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return flag; 
    }

    public void setRestRegisterId(Integer restId){
		this.restRegisterId=restRegisterId;
	} 
	public Integer getRestRegisterId(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select rest_register_id from rest_registers where owner_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,ownerId);
			ResultSet rst=pst.executeQuery();
			rst.next();
			restRegisterId=rst.getInt(1);
			con.close();
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();		
		}
		return restRegisterId;
	}
	//for collecting restaurants of particular citites
	public static ArrayList<RestRegister> collectRest(Integer city_id){
		ArrayList<RestRegister> rests=new ArrayList<RestRegister>();
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
		String query="select * from rest_registers where city_id=?";
		PreparedStatement pst=con.prepareStatement(query);
		pst.setInt(1,city_id);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			RestRegister rest=new RestRegister(rs.getInt("rest_register_id"),rs.getString("rest_name"),rs.getString("rest_address"),rs.getString("rest_contact"),rs.getInt("owner_id"),new City(rs.getInt("city_id")),rs.getString("opTime"),rs.getString("clTime"),rs.getString("disp_img"));
			rests.add(rest);
			}
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return rests;
    }
	//for collecting restaurants for owner
	public static ArrayList<RestRegister> collectRest2(Integer id){
		ArrayList<RestRegister> rests=new ArrayList<RestRegister>();
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
		String query="select rest_name,disp_img from rest_registers where owner_id=?";
		PreparedStatement pst=con.prepareStatement(query);
		pst.setInt(1,id);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			RestRegister rest=new RestRegister(rs.getString("rest_name"),rs.getString("disp_img"));
			rests.add(rest);
			}
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return rests;
    }
	//for collecting particular restaurant information
	public  RestRegister collectRest3(Integer restRegisterId){
		RestRegister rest=null;
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
		String query="select * from rest_registers where rest_register_id=?";
		PreparedStatement pst=con.prepareStatement(query);
		pst.setInt(1,restRegisterId);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			rest=new RestRegister(rs.getInt("rest_register_id"),rs.getString("rest_name"),rs.getString("rest_address"),rs.getString("rest_contact"),rs.getInt("owner_id"),new City(rs.getInt("city_id")),rs.getString("opTime"),rs.getString("clTime"),rs.getString("disp_img"));
			
			}
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return rest;
    }
	//for collecting  restaurant of particular category
	public static ArrayList collectRest4(Integer id,Integer cId){
		ArrayList<RestRegister> rests=new ArrayList<RestRegister>();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select * from rest_registers natural join rest_categories where category_id=?&city_id=?;";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1,id);
			pst.setInt(2,cId);
			ResultSet rs=pst.executeQuery();
			while(rs.next()){
			RestRegister rest=new RestRegister(rs.getInt("rest_register_id"),rs.getString("rest_name"),rs.getString("rest_address"),rs.getString("rest_contact"),rs.getInt("owner_id"),new City(rs.getInt("city_id")),rs.getString("opTime"),rs.getString("clTime"),rs.getString("disp_img"));
			rests.add(rest);
			}
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return rests;
    }
	//for admin
	public static ArrayList<RestRegister> collectRest5(){
		ArrayList<RestRegister> rests=new ArrayList<RestRegister>();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select * from rest_registers ";
			PreparedStatement pst=con.prepareStatement(query);
			//pst.setInt(1,id);
			ResultSet rs=pst.executeQuery();
			while(rs.next()){
			RestRegister rest=new RestRegister(rs.getInt("rest_register_id"),rs.getString("rest_name"),rs.getInt("owner_id"),new City(rs.getInt("city_id")));
			rests.add(rest);
			}
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return rests;
    }

	
    public void setRestName(String restName){
		this.restName=restName;
	} 
	public String getRestName(){
		return restName;
	}

     public void setRestAddress(String restAddress){
		this.restAddress=restAddress;
	} 
	public String getRestAddress(){
		return restAddress;
	}

    public void setRestcontact(String restContact){
		this.restContact=restContact;
	} 
	public String getRestContact(){
		return restContact;
	}
	public void setOpTime(String opTime){
		this.opTime=opTime;	
	}

	public String getOpTime(){
		return opTime;
	}

	public void setClTime(String clTime){
		this.clTime=clTime;	
	}

	public String getClTime(){
		return clTime;
	}

	public void setDispImg(String dispImg){
		this.dispImg=dispImg;
	}
	public String getDispImg(){
		return dispImg;
	}
	public City getCity(){
		return city;
	}
	public void setOwnerId(int ownerId){
		this.ownerId=ownerId;
	}
	public int getOwnerId(){
		return ownerId;
	}
}	