<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<body>
<p>Привет мир!</p>
<form action="${pageContext.request.contextPath}/hello_ru" method="post">
    <p>Ваше имя:
        <input type="text" name="name"/></p>
    <p>
        <input type="submit" name="submit" value="Подтверждаю"/></p>
</form>

<form action="${pageContext.request.contextPath}/hello_en" method="get">
    <input type="submit" name="change" value="changtoen"/>
</form>

</body>
</body>
</html>
