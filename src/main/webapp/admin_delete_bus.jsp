<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>  
        
            		<%@ include file="adminsecuritycheck.jsp" %>
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Bus</title>
    	        <%@ include file="conjsp.jsp" %>
</head>
<body>
<sql:update dataSource = "${db}" var="rs"> delete from bus_detail where busid='${param.busid}'</sql:update>

  <c:redirect url="admin_show_buslist.jsp" ></c:redirect>
</body>
</html>