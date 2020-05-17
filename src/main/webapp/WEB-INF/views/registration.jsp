<%@ taglib
        prefix="form"
        uri="http://www.springframework.org/tags/form" %>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <style>
        body
        {
            background: url("https://cutewallpaper.org/21/1920x1080-gif/Animated-GIFs-Animation-on-Behance.gif");
            display: block;
            background-size: cover;
        }
        .login
        {
            position: fixed;
            bottom: 55%;
            left: 45%;
        }
        .email
        {
            position: fixed;
            bottom: 48%;
            left: 44.8%;
        }
        .password
        {
            position: fixed;
            left: 43.6%;
            bottom: 41%;
        }
        button
        {
            position: fixed;
            bottom: 36.5%;
            left: 52.8%;
        }
        .circle
        {
            width: 400px;
            height: 400px;
            position: fixed;
            left: 35.5%;
            bottom: 21%;
            background-color: white;
            padding: 300px;
            border-radius: 300px;
            border-style: solid;
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
        .error
        {
            color: red;
        }
    </style>
    <title>registration</title>
</head>
<body>
<div class="circle"></div>
<div class="form">
<form:form modelAttribute="userForm" method="post">
        <div class="login">
            <form:errors path="nick" element="div" cssClass="error"/>
            <label>Login:</label>
            <form:input type="text" placeholder="Enter Login" path="nick"/>
        </div>
        <div class="email">
            <form:errors path="email" element="div" cssClass="error"/>
            <label>E-mail:</label>
            <form:input type="email" aria-describedby="emailHelp" placeholder="Enter Email" path="email"/>
        </div>
        <div class="password">
            <form:errors path="password" element="div" cssClass="error"/>

            <label>Password:</label>
            <form:input type="password" placeholder="Enter Password" path="password"/>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</div>
<h1>Registration</h1>
<a href="/">
    <div class="return">
        <img src="https://blachymaxsystem.pl/wp-content/uploads/2018/02/cofnij-max-system.png" alt="" width="100%" height="100%">
    </div>
</a>
</body>
</html>
