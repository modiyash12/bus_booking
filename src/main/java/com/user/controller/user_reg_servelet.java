package com.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.user_details;
import com.user.Dao.user_reg_Dao;


@WebServlet("/user_reg_servelet")
public class user_reg_servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public user_reg_servelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		

		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String phoneno = request.getParameter("phoneno");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        String securityquestion = request.getParameter("securityquestion");
        String answer = request.getParameter("answer");

        user_details user = new user_details(name,phoneno,email,password,address,city,pincode,securityquestion, answer);
        user_reg_Dao rDao = new user_reg_Dao();
        int i = rDao.user_reg(user);
        if(i>0) {
        	RequestDispatcher rd= request.getRequestDispatcher("user_login.jsp");
        	rd.forward(request, response);
        }else {
        	RequestDispatcher rd= request.getRequestDispatcher("user_reg.jsp");
        	rd.forward(request, response);
        }
	}

}
