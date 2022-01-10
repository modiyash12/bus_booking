package com.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.Dao.Admin_loginDao;
import com.model.admin_details;

/**
 * Servlet implementation class Admin_loginservlet
 */
@WebServlet("/Admin_loginservlet")
public class Admin_loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_loginservlet() {
        super();
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
        
        admin_details admin =new admin_details(email,password);
        
       Admin_loginDao add = new Admin_loginDao();
        int id = add.adminvalidate(admin);
        
        if(id>0) {
        	
        	 HttpSession session = request.getSession(true);
             session.setAttribute("email", email);
             request.setAttribute("email",email);
             RequestDispatcher rd= request.getRequestDispatcher("admin_dashboard.jsp");
        	rd.forward(request, response);
        }
        else {
            request.setAttribute("error","no user found");
        	RequestDispatcher rd= request.getRequestDispatcher("admin_login.jsp");
        	rd.forward(request, response);
        }
	}

}
