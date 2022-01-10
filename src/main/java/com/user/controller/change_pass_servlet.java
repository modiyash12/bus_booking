package com.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.user_details;
import com.user.Dao.change_passDao;
import com.user.Dao.user_reg_Dao;


@WebServlet("/change_pass_servlet")
public class change_pass_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public change_pass_servlet() {
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
        String cpassword = request.getParameter("cpassword");

        
        if(cpassword.equals(password)) {
        user_details user = new user_details(email,password);
        change_passDao pDao = new change_passDao();
        int z = pDao.change_pass(user);

        if(z>0) {
        	RequestDispatcher rd= request.getRequestDispatcher("user_login.jsp");
        	rd.forward(request, response);
        }}else {
        	request.setAttribute("error","Password Didn't Match");
        	RequestDispatcher rd= request.getRequestDispatcher("forgot_password.jsp");
        	rd.forward(request, response);
        }
	}

}
