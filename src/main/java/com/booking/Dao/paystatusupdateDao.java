package com.booking.Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.connection.*;

public class paystatusupdateDao {
	
	int res=0;
	Connection con=null;

	public int updatepaystatus(String bookid) {
		con=connection.createConnection();
		
		
		try {
            
            String sql = "update booking_details set paystatus='paid' where bookid=?";
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.setString(1, bookid);

            
	            
	                res = ps.executeUpdate();
	       		System.out.println(res);

	              con.close();

		}catch(Exception e)    
        {   
            e.printStackTrace();    
    }   
		
		return res;
	}

}
