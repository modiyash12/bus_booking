package com.admin.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.admin_details;
import com.connection.connection;

public class Admin_loginDao {
	Connection con=null;
	

	public int adminvalidate(admin_details admin) {
		int id=0;
		
		 try {
			 con=connection.createConnection();

				PreparedStatement ps=con.prepareStatement("select id from admin where email=? and password=?");
				
				ps.setString(1, admin.getEmail());
				ps.setString(2, admin.getPassword());
				
				ResultSet rs=ps.executeQuery();
				if(rs.next())	{
				id=rs.getInt("id");
			
				}
			}
	       catch(Exception e)    
	       {    
	               e.printStackTrace();    
	       }       
		return id;
	}

}
