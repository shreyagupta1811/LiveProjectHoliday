package models;

import java.sql.*;
import org.jasypt.util.password.StrongPasswordEncryptor;

public class AdminRegistration{
	private String email;
	private String password;

	public AdminRegistration(){

	}

	public AdminRegistration(String email,String password){
		this.email=email;
		this.password=password;
	}
	public boolean saveRecord(){
		boolean flag=false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("https://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="insert into admin_registration(email,paassword) value(?,?)";
			PreparedStatement pst = con.prepareStatement(query);
			StrongPasswordEncryptor spe=new StrongPasswordEncryptor();
			String enpass=spe.encryptPassword(password);
			pst.setString(1,email); 
			pst.setString(2,enpass); 
			int i=pst.executeUpdate();
			if(i==1){
				flag=true;
			}
			con.close();
		}catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		return flag;
	}

	public boolean checkLogin(){
		boolean flag=false;
		try{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("https://node53244-holiday.fr-1.paas.massivegrid.net/minor?user=root&password=2uqNR5hBNZ");
			String query="select paassword from admin_registration where email=?";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,email);
			ResultSet rst=pst.executeQuery();
			StrongPasswordEncryptor spe=new StrongPasswordEncryptor();
			if(rst.next()){
				flag=spe.checkPassword(password,rst.getString(1));
				
			}
			con.close();
		}
		catch (ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
		return flag;
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
		return password;
	}
}