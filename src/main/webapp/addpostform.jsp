<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div style="margin-top:20px">
        <h1>Add New Post</h1>
    </div>
    <form class="row g-3" action="addpost.jsp" method="post" enctype="multipart/form-data">
        <div class="col-md-12">
            <label>Category</label>
            <input type="text" class="form-control" name="category">
        </div>
        <div class="col-md-12">
            <label>Title</label>
            <input type="text" class="form-control" name="title">
        </div>
        <div class="col-md-12">
            <label>Writer</label>
            <input type="text" class="form-control" name="writer">
        </div>
        <div class="col-md-12">
            <label>Content</label>
            <textarea cols="50" rows="5" class="form-control" name="content"></textarea>
        </div>
        <div class="col-md-6">
            <label>Photo</label>
            <input type="file" class="form-control" name="photo">
        </div>
        <table class="col-md-12">
            <tr type="submit"><td><a class="btn btn-light" href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post" class="btn btn-primary"/></td></tr>
        </table>
    </form>
</div>


</body>
</html>