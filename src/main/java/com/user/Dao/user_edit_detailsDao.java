package com.user.Dao;

import java.sql.Connection;


import java.sql.PreparedStatement;

import com.connection.connection;
import com.model.user_details;
import com.connection.connection;

public class user_edit_detailsDao {
	
	Connection con=null;

	public int editdetails(user_details user) {
		
		int k=0;
		
		try {

	       	  con=connection.createConnection();

	            
	            PreparedStatement ps=con.prepareStatement("update user_details set name=?,phoneno=? ,email=?,address=?,city=?,pincode=?, securityquestion=?,answer=? where custid=? and password=?");
	  			
	            ps.setString(1, user.getName());
				ps.setString(2, user.getPhoneno());
				ps.setString(3, user.getEmail());
				ps.setString(4, user.getAddress());
				ps.setString(5, user.getCity());
				ps.setString(6, user.getPincode());
				ps.setString(7, user.getSecurityquestion());
				ps.setString(8, user.getAnswer());
				ps.setInt(9,user.getCustid());
				ps.setString(10, user.getPassword());


	  			 k=ps.executeUpdate();
	  			con.close();			
		}
    catch(Exception e)    
    {    
            e.printStackTrace();    
    }                
		
		return k;
	}

}
