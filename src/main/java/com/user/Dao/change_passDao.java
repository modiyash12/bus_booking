package com.user.Dao;

import java.sql.Connection;
import com.connection.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.model.user_details;

public class change_passDao {
	
	Connection con =null;

	public int change_pass(user_details user) {
    	int z=0;

		  try {
	            	
	        	  con=connection.createConnection();
				PreparedStatement ps=con.prepareStatement("update user_details set password=? where email=?");
				
				ps.setString(1, user.getPassword());
				ps.setString(2, user.getEmail());
	        	System.out.println(user.getEmail());
	        	System.out.println(user.getPassword());



				
				 z =ps.executeUpdate();

		  }catch(Exception e)    
	        {    
	            e.printStackTrace();    
	    }   
			return z;

	}


}
