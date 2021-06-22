<%@ page contentType="text/html;charset=windows-1251" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>Привет мир Hello world</p>
    <form action="${pageContext.request.contextPath}/" method="post">
        <p>Normal text field.
            <input type="text" name="name" /></p>
        <p>Submit button.
            <input type="submit" name="submit" value="submit" /></p>
    </form>

</body>
</html>
