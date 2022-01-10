package com.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.Dao.add_busDao;
import com.model.bus_details;

/**
 * Servlet implementation class add_busservlet
 */
@WebServlet("/add_busservlet")
public class add_busservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public add_busservlet() {
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
        
        String busname = request.getParameter("busname");
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        String bustype = request.getParameter("bustype");
        String atiming = request.getParameter("atiming");
        String dtiming = request.getParameter("dtiming");
        String busdate = request.getParameter("busdate");
        String duration = request.getParameter("duration");
        String busfare = request.getParameter("busfare");
        String totalseat = request.getParameter("totalseat");
        
        bus_details bus = new bus_details(busname,source,destination,bustype,atiming,dtiming,busdate,duration,busfare,totalseat);
        add_busDao abus = new add_busDao();
        int d = abus.addbus(bus);
        
        if(d>0) {
  			response.sendRedirect("admin_dashboard.jsp");
        }else {
        	request.setAttribute("error","no record inserted");
        	RequestDispatcher rd= request.getRequestDispatcher("admin_add_bus.jsp");
        	rd.forward(request, response);
        }

	}

}
