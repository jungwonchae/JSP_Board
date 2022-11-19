<%--
  Created by IntelliJ IDEA.
  User: jungwonchae
  Date: 2022/11/19
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="com.example.dao.BoardDAO, com.example.bean.BoardVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>글 상세보기</title>
</head>
<body>
<%
  BoardDAO boardDAO = new BoardDAO();
  String id = request.getParameter("id");
  BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
  request.setAttribute("vo",u);
%>

<div class="container">
  <div style="margin-top:20px">
    <h1>글 상세보기</h1>
  </div>
  <table id="edit" class="table table-striped table-bordered table-hover">
    <tr>
      <td>Category</td><td>${vo.getCategory()}</td>
    </tr>
    <tr>
      <td>Title</td><td>${vo.getTitle()}</td>
    </tr>
    <tr>
      <td>Writer</td><td>${vo.getWriter()}</td>
    </tr>
    <tr>
      <td>Photo</td><td><c:if test="${vo.getPhoto() ne ''}"><br />
      <img src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class="photo"></c:if></td>
    </tr>
    <tr>
      <td>Content</td><td>${vo.getContent()}</td>
    </tr>
  </table>
  <button type="button" onclick="history.back()" class="btn btn-light">뒤로가기</button>
</div>

</body>
</html>
