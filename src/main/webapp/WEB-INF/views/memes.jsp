<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .willsmith
        {
            position: fixed;
            bottom: 150px;
            left: 100px;
        }
        .return
        {
            width: 90px;
            height: 90px;
            position: fixed;
            right: 5px;
        }
        .meme
        {
            position: relative;
            width: 500px;
            bottom: 42%;
            left: 39.5%;
        }

    </style>
    <title>Memes</title>
</head>
<body>
<div class="willsmith">
    <img src="https://i.dlpng.com/static/png/249613_preview.png" alt="">
</div>
<a href="/">
    <div class="return">
        <img src="https://blachymaxsystem.pl/wp-content/uploads/2018/02/cofnij-max-system.png" alt="" width="100%" height="100%">
    </div>
</a>
<br>
<!-- Sign up form -->
<section class="signup">

    <br>
    <!--  add our html table here -->
    <c:set var="count" value="0" scope="page" /><br>
    <div class="meme">
    <table border="0">
        <c:choose>
            <c:when test="${not empty memeList}">
                <!-- loop over and print our employees -->

                <c:forEach var="meme" items="${memeList}">
                    <c:set var="count" value="${count + 1}" scope="page"/>
                    <tr>

                    <h1> ${meme.title} </h1>

                        <img src="<c:url value="uploads/${meme.fileName}"/>" width="450" height="430" />

                    </tr>
                </c:forEach>

            </c:when>
            <c:otherwise>
                <center><h1>No Meme Found.</h1></center>
            </c:otherwise>
        </c:choose>

    </table>
    </div>
</section>
</body>
</body>
</html>
