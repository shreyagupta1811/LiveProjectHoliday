package models;

import java.sql.*;
import org.jasypt.util.password.StrongPasswordEncryptor;
import org.jasypt.util.text.StrongTextEncryptor;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class RegisterOwner{
	private Integer ownerId;
	private String ownerName;
	private String email;
	private String password;
	private static String mpCryptoPassword = "BornToFight";

	public RegisterOwner(){
	
	}		
	public RegisterOwner(String ownerName,String email,String password){
		this.ownerName=ownerName;
		this.email=email;
		this.password=password;
	}
	public RegisterOwner(int ownerId){
		this.ownerId=ownerId;
		
	}
	public RegisterOwner(String email){
		this.email=email;
	}
	public RegisterOwner(String email,String password){
		this.email=email;
		this.password=password;
	}
	public void setOwnerId(Integer ownerId){
			this.ownerId=ownerId;
	}
	public Integer getOwnerId(){
			try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
					String query="select owner_id from owners where email=? ";
					PreparedStatement pst = con.prepareStatement(query);
					pst.setString(1,email);
					ResultSet rs = pst.executeQuery();
					rs.next();
					ownerId = rs.getInt(1);
					con.close();
			}catch(ClassNotFoundException | SQLException e){
					e.printStackTrace();
			}
			return ownerId;

	}

	public void setOwnerName(String ownerName){
			this. ownerName= ownerName;
	}
	public String getOwnerName(){
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
				String query="select owner_name from owners where email=? ";
				PreparedStatement pst = con.prepareStatement(query);
				pst.setString(1,email);
				ResultSet rs = pst.executeQuery();
				rs.next();
				ownerName = rs.getString(1);
				con.close();
			}catch(ClassNotFoundException | SQLException e){
					e.printStackTrace();
			}
			return  ownerName;
	}
	public String getOwnerName2(){
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
				String query="select owner_name from owners where owner_id=? ";
				PreparedStatement pst = con.prepareStatement(query);
				pst.setInt(1,ownerId);
				ResultSet rs = pst.executeQuery();
				rs.next();
				ownerName = rs.getString(1);
				con.close();
			}catch(ClassNotFoundException | SQLException e){
					e.printStackTrace();
			}
			return  ownerName;
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
			String query="select password from owners where email=?";
			PreparedStatement pst = con.prepareStatement(query);
			System.out.println(email+"getted email");
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				StandardPBEStringEncryptor spe=new StandardPBEStringEncryptor();
				spe.setPassword(mpCryptoPassword);
				password=spe.decrypt(rs.getString(1));
				System.out.println(password+"getted password");
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
	/// Register function t3
	public boolean saveRecord(){
		boolean flag=false;
		try{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into owners (owner_name,email,password) value(?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			StandardPBEStringEncryptor spe=new StandardPBEStringEncryptor();
			spe.setPassword(mpCryptoPassword);
			String enpass=spe.encrypt(password);
			pst.setString(1,ownerName); 
			pst.setString(2,email); 
			pst.setString(3,enpass); 
			//System.out.println(ownerName+email+password);
			int i=pst.executeUpdate();
			//System.out.println(i+"=i");
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


	///Login function t1
	public boolean checkLogin(){
		boolean flag=false;
		try{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select password from owners where email=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,email);
			ResultSet rst=pst.executeQuery();
			System.out.println(email);
			StandardPBEStringEncryptor spe=new StandardPBEStringEncryptor();
			if(rst.next()){
				spe.setPassword(mpCryptoPassword);
				String dec=spe.decrypt(rst.getString(1));
				if(password.equals(dec)){
					flag=true;
				}
				else{
					flag=false;
				}
			/*
			StrongPasswordEncryptor spe=new StrongPasswordEncryptor();
			if(rst.next()){
				flag=spe.checkPassword(password,rst.getString(1));
				System.out.println(flag);
			
			*/
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
}
