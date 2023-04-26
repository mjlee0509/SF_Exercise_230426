<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원정보 수정</title>
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
            height: auto;
        }

        .main h2 {
            text-align: center;
            margin: 0 auto;
            padding-top: 30px;
            padding-bottom: 30px;
        }

        .main form {
            margin: 0 auto;
            text-align: center;
            padding-bottom: 100px;
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
    <a href="/list" style="background-color: #17ff00; color: black">회원목록조회/수정</a>
    <a href="/">회원매출조회</a>
    <a href="/">홈으로</a>
</div>
<div class="main">
    <h2>회원정보 수정</h2>
    <form action="/update" method="post">
        회원번호 :: <input type="text" name="custno" value="${member.custno}" readonly> <br>
        회원이름 :: <input type="text" name="custname" value="${member.custname}"> <br>
        전화번호 :: <input type="text" name="phone" value="${member.phone}"> <br>
        회원주소 :: <input type="text" name="address" value="${member.address}"> <br>
        가입일자 :: <input type="text" name="joindate" value="${member.joindate}" readonly> <br>
        회원등급 :: <input type="text" name="grade" value="${member.grade}"> <br>
        도시코드 :: <input type="text" name="city" value="${member.city}"> <br>
        <input type="submit" value="수정">
        <input type="button" value="조회" onclick="show_list()">
    </form>
</div>
<div class="footer">

</div>
</body>
<script>
    const show_list = (custno) => {
        location.href="/list?custo="+custno;
    }
</script>
</html>
