<%@ taglib
        prefix="form"
        uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: bartosz
  Date: 23.04.2020
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>


        body
        {
            background: url("https://media1.giphy.com/media/NvPwzmtV1qKNa/source.gif");
            backdrop-filter: blur(5px);
            display: block;
            background-size: cover;
        }
        .login
        {
            position: fixed;
            bottom: 52%;
            left: 45%;
        }
        .password
        {
            position: fixed;
            bottom: 48%;
            left: 43.6%;
        }
        button
        {
            position: fixed;
            left: 52.8%;
            bottom: 43.5%;
        }
        .block
        {
            filter: blur(2px);
            opacity: 85%;
            position: fixed;
            width: 350px;
            height: 500px;
            left: 41.5%;
            bottom: 28%;
            background-color: whitesmoke;
            padding: 20px;
            border-radius: 25px;
        }
        h1
        {
            position: fixed;
            left: 46%;
            bottom: 63%;
        }
        .return
        {
            width: 90px;
            height: 90px;
            position: fixed;
            right: 5px;
        }
        .register
        {
            position: fixed;
            left: 45%;
            bottom: 39%;
        }
        span
        {
            color: red;
        }
    </style>
    <title>login</title>
</head>

<body>

<div class="block">
</div>
    <form action="login" method="post">
        <div class="form">
            <div class="login">
                <span>
                ${loginError}
                </span>
            <label>Login:</label>
            <input type="text" placeholder="Enter Login" name="nick">
            </div>
            <div class="password">
            <label>Password:</label>
            <input type="password" placeholder="Enter Password" name="password">
            </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
<h1>Welcome!</h1>
<a href="/">
<div class="return">
    <img src="https://blachymaxsystem.pl/wp-content/uploads/2018/02/cofnij-max-system.png" alt="" width="100%" height="100%">
</div>
</a>
<div class="register">
<a href="registration">
    No account yet? Register here!
</a>
</div>
</body>
</html>
