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
    <link rel="stylesheet" href="/resources/css/update.css">
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/navList.jsp"%>
<div class="main">
    <h2>회원정보 수정</h2>
    <form action="/update" method="post">
        회원번호 :: <input type="text" name="custno" value="${member.custno}" readonly> <br>
        회원이름 :: <input type="text" name="custname" value="${member.custname}"> <br>
        전화번호 :: <input type="text" name="phone" value="${member.phone}"> <br>
        회원주소 :: <input type="text" name="address" value="${member.address}"> <br>
        가입일자 :: <input type="text" name="joindate" value="${member.joindate}"> <br>
        회원등급 :: <input type="text" name="grade" value="${member.grade}"> <br>
        도시코드 :: <input type="text" name="city" value="${member.city}"> <br>
        <input type="submit" value="수정" onclick="update_alert('${member.custno}')">
        <input type="button" value="조회" onclick="show_list()">
    </form>
</div>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const show_list = (custno) => {
        location.href="/list?custno="+custno;
    }
    const update_alert = (custno) => {
        location.href="/update?custno="+custno;
        alert("수정이 완료되었습니다")

    }

</script>
</html>
