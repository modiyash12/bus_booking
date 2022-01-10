package com.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import com.model.user_details;
import com.user.Dao.loginDao;


@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Loginservlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        user_details user =new user_details(email,password);
        
        loginDao ld = new loginDao();
        int custid = ld.uservalidate(user);
        
        if(custid != 0) {
        	
        	 HttpSession session = request.getSession(true);
             session.setAttribute("custid", custid);
             request.setAttribute("custid", custid);
             RequestDispatcher rd= request.getRequestDispatcher("user_dashboard.jsp");
        	rd.forward(request, response);
        }
        else {
            request.setAttribute("error","no user found");
        	RequestDispatcher rd= request.getRequestDispatcher("user_reg.jsp");
        	rd.forward(request, response);
        }
        

       
        
	}

}
