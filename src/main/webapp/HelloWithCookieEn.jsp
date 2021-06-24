<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Hello ${name}</h2>
<form action="${pageContext.request.contextPath}/hello_en" method="post">
    <p>Your name:
        <input type="text" name="name"/>
    </p>
    <input type="submit" name="submit" value="Submit"/>
</form>

<form action="${pageContext.request.contextPath}/hello_ru" method="get">
    <input type="submit" name="change" value="changtoru"/>
</form>

<form action="${pageContext.request.contextPath}/exit_en" method="post">
    <input type="submit" name="exit" value="exit"/>
</form>
</body>
</html>