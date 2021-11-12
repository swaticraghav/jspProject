<%@ page import="java.util.*"%>
<html>
<body>
	<!-- 1. Create the HTML form -->
	<form action="todo-demo.jsp">
		To-DO List Items: <input type="text" name="usersList" /> <input
			type="submit" name="submit" />
	</form>
	<!-- 2. Add the new/old item to the to-do list -->
	<%
		// 2.1 Get the items list from the session 
		List<String> listItems = (List<String>) session.getAttribute("toDoList");
		// 2.2 Check if the item list is empty
		if (listItems == null) {
			listItems = new ArrayList<String>();
			session.setAttribute("toDoList", listItems);
		}
		// 2.3 If the item list from our user's input is not empty, add the old data to the list
		String usersList = request.getParameter("usersList");
		if (usersList != null && !(usersList.isEmpty())) {
			listItems.add(usersList);
			
			response.sendRedirect("todo-demo.jsp");
		}
	%>
	<!-- 3. Display all the items of the to-do list from the session -->
	<hr>
	<b>User's List: </b>
	<br />
	<br />
	<ol>
		<%
			for (String temp : listItems) {
				out.println("<li>" + temp + "</li>");
			}
		%>
	</ol>

</body>
</html>