<%@ page import="com.binh.gradebook.model.Todo" %>
<%@ page import="java.util.List" %>
<%
	List<Todo> todos = TodoLocalServiceUtil.getTodos(-1, -1);
	for (Todo todo : todos) {
%>
<div>
	<strong><%= todo.getTitle() %></strong>
	<p><%= todo.getDescription() %></p>
	<p>Status: <%= todo.isDone() ? "Done" : "Pending" %></p>
</div>
<%
	}
%>
