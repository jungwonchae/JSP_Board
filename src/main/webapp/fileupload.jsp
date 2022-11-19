<%--
  Created by IntelliJ IDEA.
  User: jungwonchae
  Date: 2022/11/19
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.io.File"%>
<%@ page import ="com.oreilly.servlet.MultipartRequest"%>
<%@ page import ="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<html>
<head>
    <title>파일 업로드 결과</title>
</head>
<body>
<%
  String filename = "";
  int sizeLimit = 15 * 1024 * 1024;

  String realPath = request.getServletContext().getRealPath("upload");

  File dir = new File(realPath);
  if(!dir.exists()) dir.mkdirs();

  MultipartRequest multipartRequest = null;
  multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

  filename = multipartRequest.getFilesystemName("photo");
%>
<img src ="${pageContext.request.contextPath}/upload/<%=filename%>">
</body>
</html>
