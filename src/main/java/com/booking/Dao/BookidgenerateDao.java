package com.booking.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.connection.*;

public class BookidgenerateDao {
	
	private int count=0;
	Connection con=null;

	public String generateid() {
		String bookid="book_0";

		try {
				con=connection.createConnection();
	          Statement stmt  = con.createStatement();
	          String sql = "select  max(count) as count from booking_details";

	          	ResultSet rs    = stmt.executeQuery(sql);
	              while (rs.next()) {
	          	 this.count = rs.getInt("count");
	          	count++;
	          	 bookid = bookid+count;

	          	}}
	              catch(Exception e)    
	              {    
	                      e.printStackTrace();    
	              }
		return bookid;  
		
	}
		
		public int createcount() {
			return this.count;
		
			
	}

}
