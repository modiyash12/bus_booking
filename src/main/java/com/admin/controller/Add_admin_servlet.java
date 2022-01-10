package com.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.Dao.Add_adminDao;
import com.model.admin_details;


@WebServlet("/Add_admin_servlet")
public class Add_admin_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Add_admin_servlet() {
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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phoneno = request.getParameter("phoneno");
		
		admin_details admin = new admin_details(name, email, password, phoneno);
		Add_adminDao ad = new Add_adminDao();
		int res=ad.addadmin(admin);
		
		if(res>0) {
        	RequestDispatcher rd= request.getRequestDispatcher("admin_dashboard.jsp");
        	rd.forward(request, response);
        }else {
        	request.setAttribute("error"," Didn't update");
        	RequestDispatcher rd= request.getRequestDispatcher("add_admin.jsp");
        	rd.forward(request, response);
        }
		}
	}
	
	


