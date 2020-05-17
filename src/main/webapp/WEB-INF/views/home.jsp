<%@ taglib
        prefix="c"
        uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <title>HomePage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <style>
        body
        {
            display: block;
            background-size: cover;
            background: url("https://cdn2.scratch.mit.edu/get_image/gallery/5552283_170x100.png");
        }
        .loginButtons
        {
            position: absolute;
            left: 1680px;
            top: 30px;
        }
        .meme
        {
            position: absolute;
            left: 40px;
            top: 30px;
        }
        .create
        {
            position: absolute;
            left: 144px;
            top: 30px;
        }
    </style>
</head>
<body>
    <div class="loginButtons">
        <c:if test="${sessionScope.loggedInUser==null}">
        <a href="login">
        <button type="button" class="btn btn-outline-primary btn-lg">Sign in</button>
        </a>
        </c:if>
        <c:if test="${sessionScope.loggedInUser!=null}">
            <a href="logout">
                <button type="button" class="btn btn-outline-primary btn-lg">Log out</button>
            </a>
        </c:if>
        <a href="registration">
        <button type="button" class="btn btn-outline-success btn-lg">Register</button>
        </a>
    </div>
    <div class="meme">
    <a href="memes">
        <button type="button" class="btn btn-outline-danger btn-lg">Memes</button>
    </a>
    </div>
    <div class="create">
        <a href="create">
            <c:if test="${sessionScope.loggedInUser==null}">
                <button type="button" class="btn btn-lg btn-outline-dark" disabled>Create Meme</button>
            </c:if>
            <c:if test="${sessionScope.loggedInUser!=null}">
                <button type="button" class="btn btn-lg btn-outline-success" enable>Create Meme</button>
            </c:if>
        </a>
    </div>
</body>
</html>
