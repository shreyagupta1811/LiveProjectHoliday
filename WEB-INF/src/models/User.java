package models;
import java.sql.*;
//import org.jasypt.util.password.StrongPasswordEncryptor;
//import org.jasypt.util.text.StrongTextEncryptor;
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import java.util.*;
public class User{
	private Integer userId;
	private String userName;
	private String email;
	private String password;
	private static String mpCryptoPassword = "BornToFight";
	
	
	public User(){
	
	}	
	public User(String userName,String email,String password){
		this.userName=userName;
		this.email=email;
		this.password=password;
	}
	public User(int userId,String userName,String email){
		this.userName=userName;
		this.email=email;
		this.userId=userId;
		
	}
	public User(String email){
		this.email=email;
	}
	public User(Integer userId,String userName,String email,String password){
		this.userName=userName;
		this.email=email;
		this.password=password;
		this.userId=userId;
	}
	public User(String email,String password){
		this.email=email;
		this.password=password;
	}
	//t2
	public boolean checkLogin(){
		boolean flag=false;
		try{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select password from users where email=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,email);
			ResultSet rst=pst.executeQuery();
			StandardPBEStringEncryptor spe=new StandardPBEStringEncryptor();
			if(rst.next()){
				spe.setPassword(mpCryptoPassword);
				if(password.equals(spe.decrypt(rst.getString(1)))){
					flag=true;
				}
				else{
					flag=false;
				}
				//flag=spe.checkPassword(password,rst.getString(1));
				
			}
			con.close();
			return flag;
			
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	} 
	//for saving user t4
	public boolean saveRecord(){
		boolean flag=false;
		try{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into users (user_name,email,password) value(?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			StandardPBEStringEncryptor spe=new StandardPBEStringEncryptor();
			spe.setPassword(mpCryptoPassword);
			String spass=spe.encrypt(password);
			pst.setString(1,userName); 
			pst.setString(2,email); 
			pst.setString(3,spass); 
			int i=pst.executeUpdate();
			if(i==1){
				flag=true;
			}
			con.close();
			return flag;
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	} 
		public void setUserId(Integer userId){
		this.userId=userId;
	} 
	public Integer getUserId(){
		return userId;
	}
	
	public void setUserName(String userName){
		this.userName=userName;
	} 
	public String getUserName(){
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
				String query="select user_name from users where email=? ";
				PreparedStatement pst = con.prepareStatement(query);
				pst.setString(1,email);
				ResultSet rs = pst.executeQuery();
				rs.next();
				userName = rs.getString(1);
				con.close();
			}catch(ClassNotFoundException | SQLException e){
					e.printStackTrace();
			}
		return  userName;
	}
	
	public void setEmail(String email){
		this.email=email;
	} 
	public String getEmail(){
		return email;
	}
	public void setPassword(String password){
		this.password=password;
	} 
	public String getPassword(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select password from users where email=? ";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				StandardPBEStringEncryptor spe=new StandardPBEStringEncryptor();
				spe.setPassword(mpCryptoPassword);
				password=spe.decrypt(rs.getString(1));
				con.close();
				return password;
				/*
				password = rs.getString(1);
				StrongTextEncryptor ste=new StrongTextEncryptor();
				ste.setPassword(password);
				password=ste.decrypt(password);
				con.close();
				return password;
				*/
			}
			else{
				return "noemail";		
			}
		}catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		return "noemail";	
	}
	public static  ArrayList<User> collectUser(){
		ArrayList<User> users=new ArrayList<User>();
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
				String query="select * from users ";
				PreparedStatement pst = con.prepareStatement(query);
				//pst.setString(1,email);
				ResultSet rs = pst.executeQuery();
				while(rs.next()){
					users.add(new User(rs.getInt(1),rs.getString(2),rs.getString(3)));
				}
				con.close();
			}catch(ClassNotFoundException | SQLException e){
					e.printStackTrace();
			}
		return  users;
	}

}
