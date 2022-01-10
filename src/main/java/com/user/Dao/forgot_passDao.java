package com.user.Dao;

import java.sql.Connection;
import com.connection.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.user_details;

public class forgot_passDao {
	
	Connection con =null;
	

	public int forgot_pass(user_details user) {
		int custid=0;
		
		
			 try {
				 con=connection.createConnection();
				PreparedStatement ps=con.prepareStatement("select custid from user_details where email=? and securityquestion=? and answer=?");
				
				ps.setString(1, user.getEmail());
				ps.setString(2, user.getSecurityquestion());
				ps.setString(3, user.getAnswer());

				
				ResultSet rs=ps.executeQuery();
				if(rs.next())	{
					custid = rs.getInt("custid");
			}}
	       catch(Exception e)    
	       {    
	               e.printStackTrace();    
	       }       
			 
		

		return custid;
	}

}
