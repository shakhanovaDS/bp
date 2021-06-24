<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<body>
<p>Hello world!</p>
<form action="${pageContext.request.contextPath}/hello_en" method="post">
    <p>Your name:
        <input type="text" name="name"/></p>
    <p>
        <input type="submit" name="submit" value="Submit"/></p>
</form>

<form action="${pageContext.request.contextPath}/hello_ru" method="get">
    <input type="submit" name="change" value="changtoru"/>
</form>

</body>
</body>
</html>
