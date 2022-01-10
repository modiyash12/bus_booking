package com.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.user_details;
import com.user.Dao.forgot_passDao;
import com.user.Dao.user_reg_Dao;


@WebServlet("/forgot_pass_servlet")
public class forgot_pass_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public forgot_pass_servlet() {
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
		
        String email = request.getParameter("email");
        String securityquestion = request.getParameter("securityquestion");
        String answer = request.getParameter("answer");
        
        
        user_details user = new user_details(email,securityquestion, answer);
        forgot_passDao fDao = new forgot_passDao();
        int custid = fDao.forgot_pass(user);
        if(custid>0) {
        	request.setAttribute("email",email);
        	RequestDispatcher rd= request.getRequestDispatcher("change_pass.jsp");
        	rd.forward(request, response);
        }else {
        	request.setAttribute("error","records Didn't Match");
        	RequestDispatcher rd= request.getRequestDispatcher("forgot_password.jsp");
        	rd.forward(request, response);
        }
	}

}
