<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <style>
        .header {
            background-color: black;
            text-align: center;
            height: 100px;
            top: 0;
        }

        .header h1 {
            text-align: center;
            margin: 0 auto;
            padding-top: 30px;
            padding-bottom: 30px;
            width: auto;
            color: white;
        }

        .nav {
            overflow: hidden;
            background-color: #9f9f9f;
            height: 40px;
        }

        .nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            text-decoration: none;
            padding: 10px 30px;
        }

        .nav a:hover {
            background-color: #17ff00;
            color: black;
        }

        .main {
            background-color: rgb(255, 255, 255);
            height: 800px;
        }

        .footer {
            background-color: black;
            text-align: center;
            height: 100%;
            top: 0;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>쇼핑몰 회원관리</h1>
    </div>
    <div class="nav">
        <a href="/save">회원등록</a>
        <a href="/list">회원목록조회/수정</a>
        <a href="/">회원매출조회</a>
        <a href="/">홈으로</a>
    </div>
    <div class="main">

    </div>
    <div class="footer">

    </div>

</body>
</html>
