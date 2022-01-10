package com.admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.model.bus_details;
import com.connection.*;

public class add_busDao {
	Connection con=null;


	public int addbus(bus_details bus) {
		int d=0;
		
		try {
		
		   con=connection.createConnection();
			PreparedStatement ps=con.prepareStatement("insert into bus_detail (busname,source,destination,bustype,atiming,dtiming,busdate,duration,busfare,totalseat,seatleft)values(?,?,?,?,?,?,?,?,?,?,?);");
			
			ps.setString(1, bus.getBusname());
			ps.setString(2,bus.getSource());
			ps.setString(3, bus.getDestination());
			ps.setString(4, bus.getBustype());
			ps.setString(5,bus.getAtiming());
			ps.setString(6,bus.getDtiming());
			ps.setString(7,bus.getBusdate());
			ps.setString(8, bus.getDuration());
			ps.setString(9, bus.getBusfare());
			ps.setString(10, bus.getTotalseat());
			ps.setString(11, bus.getTotalseat());

			int i=ps.executeUpdate();
		}catch(Exception e)    
        {    
            e.printStackTrace();    
    }   
		return d;
	}

}

	
