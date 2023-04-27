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
    <link rel="stylesheet" href="/resources/css/save.css">
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/navSave.jsp"%>
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
<%@include file="component/footer.jsp"%>
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
