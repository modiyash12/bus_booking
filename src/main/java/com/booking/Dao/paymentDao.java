package com.booking.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.connection.connection;
import com.model.payment_details;

import com.connection.*;


public class paymentDao {

	public int paymentadd(payment_details pays) {
		
		int k=0;
		Connection con = null;
		
		

		try {

	      	  con=connection.createConnection();
	            
PreparedStatement ps=con.prepareStatement("insert into payment_details(bookid,custid,payment,cardnumber,cardexpiry,cardname,paydate) values(?,?,?,?,?,?,now());");


ps.setString(1, pays.getBookid());
ps.setInt(2, pays.getCustid());
ps.setInt(3, pays.getPayment());
ps.setString(4, pays.getCardname());
ps.setString(5,pays.getExpiry());
ps.setString(6, pays.getCardname());



 k=ps.executeUpdate();


	        }
	        catch(Exception e)    
	        {    
	                e.printStackTrace();    
	        }   
	        

		return k;
	}
}