<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<% 
	
	String strUsername = request.getParameter("username");
	String strPassword = request.getParameter("password");
	
	//Query DB
	String dbUsername = "peckpatum";
	String dbPassword = "peck1234";
	
	
	if(strUsername.equals(dbUsername) && strPassword.equals(dbPassword)){
		out.println("Login successfully");
		session.setAttribute("username_sess",dbUsername);
        response.sendRedirect("index.jsp");
	}
	else{
		out.println("UserName หรือ Password ไม่ถูกต้อง");
		
	}
%>
