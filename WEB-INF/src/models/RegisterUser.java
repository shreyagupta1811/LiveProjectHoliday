package models;

public class RegisterUser{
	private Integer userId;
	private String userName;
	private String email;
	private String password;
	private String city;

	public RegisterUser(String email){
		this.email=email;
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
			return userName;
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

	public void setCity(String city){
			this.city=city;
	}
	public String getCity(){
			return city;
	}

}