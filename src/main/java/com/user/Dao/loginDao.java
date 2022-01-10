package com.user.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.user_details;
import com.connection.connection;



public class loginDao  {
	

	Connection con =null;
	
	public int uservalidate(user_details user) {
		int custid=0;
		 try {

       	  con=connection.createConnection();
       	  PreparedStatement ps=con.prepareStatement("select custid from user_details where email=? and password=?");
			
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())	{

			custid=rs.getInt("custid");}


		}
       catch(Exception e)    
       {    
               e.printStackTrace();    
       }       
		 
		 return custid;
	}

	

}
