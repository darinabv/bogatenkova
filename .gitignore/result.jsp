<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyFirstServlet</title>
</head>
    <body>
    <!-- Выводим сообщение, полученное от сервлета,
             для этого производим поиск по <ключ>-->
        <h1> ${answer}</h1>
        <form action=/ method="POST">
            <button type="submit">Заново</button> <!-- Кнопка, перенаправляющая на главную страницу методом Post >-->
        </form>
    </body>
</html>
