package com.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.Dao.edit_busDao;
import com.model.bus_details;

/**
 * Servlet implementation class edit_busservlet
 */
@WebServlet("/edit_busservlet")
public class edit_busservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edit_busservlet() {
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
		
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int busid=Integer.parseInt(request.getParameter("busid"));
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
        
        bus_details b = new bus_details(busid,busname,source,destination,bustype,atiming,dtiming,busdate,duration,busfare,totalseat);
        edit_busDao edit = new edit_busDao();
        int s = edit.editbus(b);
        
        if(s>0) {
        	RequestDispatcher rd= request.getRequestDispatcher("admin_show_buslist.jsp");
        	rd.forward(request, response);
        }else {
        	request.setAttribute("error"," Didn't update");
        	RequestDispatcher rd= request.getRequestDispatcher("admin_edit_busdetails.jsp");
        	rd.forward(request, response);
        }

        
	}

}
