package com.user.Dao;

import java.sql.Connection;
import com.connection.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.model.user_details;

public class user_reg_Dao {
	Connection con =null;
	
	public int user_reg(user_details user) {
		int i=0;
		  try {

	      	  con=connection.createConnection();
	            
	        
				PreparedStatement ps=con.prepareStatement("insert into user_details(name,phoneno,email,password,address,city,pincode,securityquestion,answer,regdate) values(?,?,?,?,?,?,?,?,?,now())");
				
				ps.setString(1, user.getName());
				ps.setString(2, user.getPhoneno());
				ps.setString(3, user.getEmail());
				ps.setString(4, user.getPassword());
				ps.setString(5, user.getAddress());
				ps.setString(6, user.getCity());
				ps.setString(7, user.getPincode());
				ps.setString(8, user.getSecurityquestion());
				ps.setString(9, user.getAnswer());

				i=ps.executeUpdate();
				con.close();			
	                      
	        }
	        catch(Exception e)    
	        {    
	                e.printStackTrace();    
	        }      
		return i;
	}

}
