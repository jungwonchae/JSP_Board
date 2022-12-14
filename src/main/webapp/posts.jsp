<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: white;
  color: black;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
<div class="container">
	<div style="margin-top:20px">
		<h1>자유게시판</h1>
	</div>
	<%
		BoardDAO boardDAO = new BoardDAO();
		List<BoardVO> list = boardDAO.getBoardList();
		request.setAttribute("list",list);
	%>
	<table id="list" width="90%" class="table table-hover">
	<tr>
		<th>Id</th>
		<th>Category</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Content</th>
		<th>Regdate</th>
		<th>Updated At</th>
		<th>View</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.getSeq()}</td>
			<td>${u.getCategory()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getWriter()}</td>
			<td>${u.getContent()}</td>
			<td>${u.getRegdate()}</td>
			<td>${u.getUpdatedAt()}</td>
			<td><a href="view.jsp?id=${u.getSeq()}" class="btn btn-success">View</a></td>
			<td><a href="editform.jsp?id=${u.getSeq()}" class="btn btn-warning">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.getSeq()}')" class="btn btn-danger">Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	<br/><a href="addpostform.jsp" class="btn btn-primary">Add New Post</a>
</div>
</body>
</html>