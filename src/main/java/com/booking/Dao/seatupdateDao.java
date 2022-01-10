package com.booking.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.connection.connection;
import com.model.bus_details;

public class seatupdateDao {
	
	public int seatupdate(bus_details b) {
			int i=0;
			Connection con;
		
		
		try {
			
			con=connection.createConnection();
            
            String sql = "update bus_detail set seatleft = ? where busid=?";
            PreparedStatement ps=con.prepareStatement(sql);
            
        	ps.setInt(1, b.getSeatleft());
  			ps.setInt(2, b.getBusid());
	            
	               i = ps.executeUpdate();
	       		System.out.println(i);

	              con.close();

		}catch(Exception e)    
        {   
            e.printStackTrace();    
    }   
		return i;
	}

		
}
