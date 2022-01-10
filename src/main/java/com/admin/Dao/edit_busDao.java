package com.admin.Dao;

import com.model.bus_details;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.connection.*;

public class edit_busDao {

	Connection con =null;
	
	public int editbus(bus_details b) {
		int s=0;
		
		 try {
			 
			 con = connection.createConnection();
			 
 			PreparedStatement ps=con.prepareStatement("update bus_detail set busname=?,source=? ,destination=?,bustype=?,atiming=?,dtiming=?,busdate=?, duration=?,busfare=?,totalseat=? where busid=?");
 			
 			ps.setString(1, b.getBusname());
 			ps.setString(2, b.getSource());
 			ps.setString(3, b.getDestination());
 			ps.setString(4, b.getBustype());
 			ps.setString(5, b.getAtiming());
 			ps.setString(6, b.getDtiming());
 			ps.setString(7, b.getBusdate());
 			ps.setString(8, b.getDuration());
 			ps.setString(9, b.getBusfare());
 			ps.setString(10, b.getTotalseat());
 			ps.setInt(11,b.getBusid());

 			s=ps.executeUpdate();
	}
    catch(Exception e)    
    {    
            e.printStackTrace();    
    }      

		return s;
	}

}
