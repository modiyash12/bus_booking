package com.admin.Dao;

import java.sql.Connection;
import com.connection.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.model.admin_details;

public class Add_adminDao {
	Connection con =null;
	
	public int addadmin(admin_details admin) {
		int res=0;
	
		
		 try {
			 con=connection.createConnection();	          
	          PreparedStatement ps=con.prepareStatement("insert into admin(name,email,password,phoneno,adddate) values(?,?,?,?,now());");


	          ps.setString(1, admin.getName());
	          ps.setString(2, admin.getEmail());
	          ps.setString(3, admin.getPassword());
	          ps.setString(4, admin.getPhoneno());


	          res=ps.executeUpdate();
		 }catch(Exception e)    
	        {    
             e.printStackTrace();    
     }  
		 return res;
		
	}

}
