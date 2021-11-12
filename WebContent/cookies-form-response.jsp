<%@ page import="java.net.URLEncoder" %>
<html>

<%
	// Capture the form response
	String favLang = request.getParameter("favtLang");
	favLang = URLEncoder.encode(favLang, "UTF-8");
	// Create the cookie
	Cookie myCookie = new Cookie("myApp.favLang", favLang);
	// set the time span for the cookie
	myCookie.setMaxAge(365 * 24 * 60 * 60);
	// send the cookie to the browser
	response.addCookie(myCookie);
%>
<body>
	Hi, you have successfully selected ${param.favtLang} as your favorite
	language.
	<br /> Return to
	<a href="cookies-homepage.jsp">homepage</a>.
</body>
</html>