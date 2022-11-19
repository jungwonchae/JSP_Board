<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
	request.setAttribute("vo",u);
%>
<div class="container">
	<div style="margin-top:20px">
		<h1>수정페이지</h1>
	</div>
	<form class="row g-3" action="editpost.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>

		<div class="col-md-12">
			<label>Category</label>
			<input type="text" class="form-control" name="category" value="<%= u.getCategory()%>">
		</div>

		<div class="col-md-12">
			<label>Title</label>
			<input type="text" class="form-control" name="title" value="<%= u.getTitle()%>">
		</div>

		<div class="col-md-12">
			<label>Writer</label>
			<input type="text" class="form-control" name="writer" value="<%= u.getWriter()%>">
		</div>

		<div class="col-md-12">
			<label>Content</label>
			<textarea cols="50" rows="5" name="content" class="form-control"><%= u.getContent()%></textarea>
		</div>

		<div class="col-md-6">
			<label>Photo</label>
			<input type="file" class="form-control" name="photo" value="${vo.getPhoto()}" />
			<c:if test = "${vo.getPhoto() ne ''}"><br/><img src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class ="photo"></c:if>
		</div>


	<table>
	<tr><td colspan="2"><input type="submit" value="Edit Post" class="btn btn-primary"/>
	<input type="button" value="Cancel" onclick="history.back()" class="btn btn-danger"/></td></tr>
	</table>
	</form>
</div>
</body>
</html>