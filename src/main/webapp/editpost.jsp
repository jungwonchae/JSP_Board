<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO"%>
<%@page import="com.example.bean.BoardVO"%>
<%@page import="com.example.util.FileUpload"%>

<% request.setCharacterEncoding("utf-8"); %>

<%--<jsp:useBean id="u" class="com.example.bean.BoardVO" />--%>
<%--<jsp:setProperty property="*" name="u"/>--%>

<%
	BoardDAO boardDAO = new BoardDAO();
	FileUpload upload = new FileUpload();
	BoardVO u = upload.uploadPhoto(request);

	int i=boardDAO.updateBoard(u);
	String msg = "데이터 수정 성공 !";
	if(i ==0) msg ="[error] 데이터 수정 실패 !";
	response.sendRedirect("posts.jsp");
%>

<script>
	alert('<%=msg%>');
	location.href='list.jsp';
</script>