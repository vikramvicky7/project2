<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="dao.CommentsDAOImpl"%>
<%@page import="model.Comments"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<title>Post</title>
<style>
h1 {
	text-align: center;
	margin: 20px;
	padding: 20px;
	background-color: #faecf3;
}

container {
	padding: 20px;
	text-align: center;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

table {
	border-collapse: collapse;
	width: 25%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #cd79a3;
}

x {
	text-align: center;
}
.color{
background-color:#FFE4C4;
}
</style>
</head>

<body class="color">
	<form action="/app/viewComments">

		<h1>View Comments Here</h1>
		<%
			CommentsDAOImpl cImpl = new CommentsDAOImpl();
			List<Comments> commentslist = cImpl.view();
			;
		%>
		<div clas="container">
			<table class="table table-bordered">
				<%
					if (commentslist != null) {
				%>
				<br>
				<br>
				<tr>
					<th>Comment ID</th>
					<th>Comment body</th>
					<th>User ID</th>
					<th>Post ID</th>

				</tr>

				<%
					for (Comments comment : commentslist) {
				%>
				<tr>
					<td><%=comment.getCid()%></td>
					<td><%=comment.getCbody()%></td>
					<td><%=comment.getUid()%></td>
					<td><%=comment.getPid()%></td>


				</tr>
				<%
					}
					}
				%>
			</table>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</form>
</body>
</html>