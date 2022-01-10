package com.model;

public class user_details {
	
	private int custid;
	private String name;
	private String phoneno;
	private String email;
	private String password;
	private String address;
	private String pincode;
	private String city;
	private String securityquestion;
	private String answer;
	
	
	public user_details( String name, String phoneno, String email, String password, String address,
			String pincode, String city, String securityquestion, String answer) {
		super();
		this.name = name;
		this.phoneno = phoneno;
		this.email = email;
		this.password = password;
		this.address = address;
		this.pincode = pincode;
		this.city = city;
		this.securityquestion = securityquestion;
		this.answer = answer;
	}
	
	public user_details( String email,String password) {
		this.email = email;
		this.password = password;
	}
	
	
	public user_details( String email,String securityquestion,String answer) {
		this.email = email;
		this.securityquestion = securityquestion;
		this.answer = answer;
	}

	
	public user_details( int custid,String name, String phoneno, String email, String password, String address,
			String pincode, String city, String securityquestion, String answer) {
		super();
		this.custid=custid;
		this.name = name;
		this.phoneno = phoneno;
		this.email = email;
		this.password = password;
		this.address = address;
		this.pincode = pincode;
		this.city = city;
		this.securityquestion = securityquestion;
		this.answer = answer;
	}

	public int getCustid() {
		return custid;
	}


	public void setCustid(int custid) {
		this.custid = custid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhoneno() {
		return phoneno;
	}


	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPincode() {
		return pincode;
	}


	public void setPincode(String pincode) {
		this.pincode = pincode;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getSecurityquestion() {
		return securityquestion;
	}


	public void setSecurityquestion(String securityquestion) {
		this.securityquestion = securityquestion;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}

	

	
}
