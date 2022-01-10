package com.booking.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.Dao.BookidgenerateDao;
import com.booking.Dao.seatupdateDao;
import com.model.booking_details;
import com.model.bus_details;


import com.connection.*;


/**
 * Servlet implementation class add_passservlet
 */
@WebServlet("/add_passservlet")
public class add_passservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_passservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		Connection con = null;
		
		HttpSession session = request.getSession(true);
        int custid =  (int) session.getAttribute("custid");
        
		int busid = Integer.parseInt(request.getParameter("busid"));
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String busdate = request.getParameter("busdate");
		String dtiming = request.getParameter("dtiming");
		int busfare = Integer.parseInt(request.getParameter("busfare"));
		int seatleft =Integer.parseInt(request.getParameter("seatleft"));

		int seat =Integer.parseInt(request.getParameter("seat")); 
		String [] name = request.getParameterValues("name");
		String [] age = request.getParameterValues("age");
		
		BookidgenerateDao gen = new BookidgenerateDao ();
		String bookid=gen.generateid();
		
		
		int count=gen.createcount();
		
		for(int i=0;i<seat;i++) {
			String seatno = "berth"+seatleft;
			
			try {

		      	  con = connection.createConnection();
	PreparedStatement ps=con.prepareStatement("insert into booking_details(bookid,custid,busid,source,destination,busdate,dtiming,busfare,name,age,bookdate,paystatus,seatno,count) values(?,?,?,?,?,?,?,?,?,?,now(),'due',?,?)");


	ps.setString(1, bookid);
	ps.setInt(2, custid);
	ps.setInt(3, busid);
	ps.setString(4, source);
	ps.setString(5, destination);
	ps.setString(6, busdate);
	ps.setString(7, dtiming);
	ps.setInt(8, busfare);
	ps.setString(9, name[i]);
	ps.setString(10, age[i]);
	ps.setString(11, seatno);
	ps.setInt(12, count);



	int k=ps.executeUpdate();
	seatleft = seatleft-1;

		        }
		        catch(Exception e)    
		        {    
		                e.printStackTrace();    
		        }  
		   }
		
		bus_details b = new bus_details(seatleft,busid);
		seatupdateDao set =new seatupdateDao();
		int i=set.seatupdate(b);
		if(i>0) {
			int total_pay=seat*busfare;
			request.setAttribute("bookid",bookid);
			request.setAttribute("total_pay",total_pay);
            RequestDispatcher rd= request.getRequestDispatcher("payment.jsp");
       	rd.forward(request, response);
		}else {
			request.setAttribute("error","not updated");
            RequestDispatcher rd= request.getRequestDispatcher("booking.jsp");
       	rd.forward(request, response);
		}

		}



	}


