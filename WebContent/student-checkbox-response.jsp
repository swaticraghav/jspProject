<html>
<body>
	Registered Name: ${param.firstName} ${param.lastName}
	<br /> Opted Languages:
	<ul>
		<%
			String[] languages = request.getParameterValues("optedLanguages");
			if (null != languages) {
				for (String temp : languages) {
					out.println("<li>" + temp + "</li>");
					out.println("</br>");
				}
			} else {
				out.println("No langauge opted");
			}
		%>
	</ul>

</body>
</html>