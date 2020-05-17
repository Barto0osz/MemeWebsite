<%--
  Created by IntelliJ IDEA.
  User: Siera
  Date: 29.04.2020
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib
        prefix="form"
        uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    .meme
    {
        position: absolute;
        left: 40px;
        top: 30px;
    }
    .sigin
    {
        position: fixed;
        bottom: 52%;
        left: 45%;
    }
    .upload
    {
        position: fixed;
        bottom: 52%;
        left: 45%;
    }
</style>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CreateMeme</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>

    <style>

    </style>
</head>
<body>


<a href="memes">
    <button type="button" class="btn btn-outline-danger btn-lg">Memes</button>
</a>

<!-- Sign up form -->

<c:if test="${sessionScope.loggedInUser!=null}">
    <div class="upload">
            <h3 class="form-title">Upload Meme</h3>
            <form class="register-form" modelAttribute="meme" method="post" enctype="multipart/form-data">
                <div>
                    <input type="text" name="title" placeholder="Title" />
                </div>
                <div>
                    <input type="file" name="file">
                </div>
                <input type="submit" id="signup" class="form-submit" value="Submit" />
            </form><br>
    </div>
</c:if>

<c:if test="${sessionScope.loggedInUser==null}">
    <div class="sigin">
    You have to sign in first!
<a href="login">
    <button type="button" class="btn btn-outline-primary btn-lg">Sign in</button>
</a>
    </div>
</c:if>



<!-- JS -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/js/main.js"></script>

</body>
</html>
