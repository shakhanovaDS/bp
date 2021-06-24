<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>Hello ${name}</h2>
    <form action="${pageContext.request.contextPath}/hello_ru" method="post">
        <p>Ваше имя:
            <input type="text" name="name"/>
        </p>
        <input type="submit" name="submit" value="Подтверждаю"/>
    </form>

    <form action="${pageContext.request.contextPath}/hello_en" method="get">
        <input type="submit" name="change" value="changtoen"/>
    </form>

    <form action="${pageContext.request.contextPath}/exit_ru" method="post">
        <input type="submit" name="exit" value="exit"/>
    </form>
</body>
</html>
