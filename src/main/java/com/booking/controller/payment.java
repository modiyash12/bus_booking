package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.Dao.paymentDao;
import com.booking.Dao.paystatusupdateDao;
import com.model.payment_details;


/**
 * Servlet implementation class payment
 */
@WebServlet("/payment")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment() {
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
		
		HttpSession session = request.getSession(true);
        int custid =  (int) session.getAttribute("custid");
        
		String bookid = request.getParameter("bookid");
		String cardnumber = request.getParameter("cardnumber");
		String expiry = request.getParameter("cardexpiry");
		String cardname = request.getParameter("cardname");
		int payment = Integer.parseInt(request.getParameter("payment"));
		
		payment_details pays = new payment_details(custid,bookid,payment,cardnumber,expiry,cardname);
		paymentDao p =new paymentDao();
		int k = p.paymentadd(pays);
		
		paystatusupdateDao c = new paystatusupdateDao();
		int res=c.updatepaystatus(bookid);
		
		if(res>0) {
			request.setAttribute("bookid", bookid);
			RequestDispatcher rd= request.getRequestDispatcher("success.jsp");
       	rd.forward(request, response);
		}else {
            RequestDispatcher rd= request.getRequestDispatcher("payment.jsp");
       	rd.forward(request, response);
		}
			

		
		
	}

	

}
