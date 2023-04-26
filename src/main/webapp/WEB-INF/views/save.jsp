<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원등록</title>
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
            padding-bottom: 100px;
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
    <a href="/save" style="background-color: #17ff00; color: black" >회원등록</a>
    <a href="/list">회원목록조회/수정</a>
    <a href="/">회원매출조회</a>
    <a href="/">홈으로</a>
</div>
<div class="main">
    <h2>회원등록</h2>
    <form action="/save" method="post">
       회원이름 :: <input type="text" name="custname"> <br>
       전화번호 :: <input type="text" name="phone"> <br>
       회원주소 :: <input type="text" name="address"> <br>
       가입일자 :: <input type="text" name="joindate" placeholder="yyyy-MM-dd"> <br>
       회원등급 :: <input type="text" name="grade" placeholder="A:VIP, B:일반, C:직원"> <br>
       도시코드 :: <input type="text" name="city"> <br>
        <input type="submit" value="등록">
        <input type="button" value="조회" onclick="show_list()">
    </form>
</div>
<div class="footer">

</div>
</body>
<script>
    // const joindate = () => {
    //     document.getElementsByName(joindate).value = date.toString();
    //
    // }

    const show_list = () => {
        location.href="/list"
    }
</script>
</html>
