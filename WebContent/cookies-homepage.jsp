<%@ page import="java.net.URLDecoder" %>
<html>
<%
	// set the default language in case cookie doesnt exist at all
	String favLang = "Ruby";
	// get the cookie from the browser
	Cookie[] myCookie = request.getCookies();
	// check its content and personalise the page based on that content if its not null
	if (myCookie != null) {
		for (Cookie temp : myCookie) {
			if ("myApp.favLang".equals(temp.getName())) {
				favLang = URLDecoder.decode(temp.getValue(), "UTF-8");
				break;
			}
		}
	}
%>

<body>
	<!-- Set the fav language content -->
	<br/>
	Books: A-Z
	<%=favLang%>
	books. <br/>Sites: www.<%=favLang%>.com/index Certifications:
	<%=favLang%>
	Awards and certifications<br/>
	
	Change the language as per requirement. <a href="cookies-form.html">Click here.</a>
</body>
</html>