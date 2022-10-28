
<html>
<head>
<title>Sample Application JSP Page</title>
</head>
<body bgcolor=white>
	<%@ page import="java.net.*" %>
	requested URL: <%=request.getRequestURL()%>
	requested Info: <%=request.getRequestURI()%>
	<%
	
	// 요거이 그겁니다. 서버 ip
	InetAddress inet= InetAddress.getLocalHost();
	%>
	server ip:
	<%=inet.getHostAddress()%>

	Client IP = <%=request.getRemoteAddr() %> <br/>
	Length = <%= request.getContentLength() %> <br/>
	RequestEncoding = <%= request.getCharacterEncoding() %> <br/>
	RequestContentType= <%=request.getContentType() %> <br/>
	RequestProtocol = <%= request.getProtocol() %> <br/>
	RequestMethod = <%= request.getMethod() %> <br/>
	RequestURI = <%= request.getRequestURI() %><br/>
	Request URL = <%= request.getRequestURL() %> <br/>
	ContextPath = <%= request.getContextPath() %> <br/>
	ServerName = <%= request.getServerName() %> <br/>
	ServerPort =  <%= request.getServerPort() %> <br/>


<%= new String("Hello!") %>

</body>
</html>
