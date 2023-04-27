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
<%@include file="component/header.jsp" %>
<%@include file="component/navSave.jsp" %>
<div class="main">
    <h2>회원등록</h2>
    <form action="/save" method="post" id="save-form">
        회원이름 :: <input type="text" name="custname" id="cust-name"> <br>
        전화번호 :: <input type="text" name="phone" id="phone"> <br>
        회원주소 :: <input type="text" name="address" id="address"> <br>
        가입일자 :: <input type="text" name="joindate" placeholder="yyyy-MM-dd" id="join-date"> <br>
        회원등급 :: <input type="text" name="grade" placeholder="A:VIP, B:일반, C:직원" id="grade"> <br>
        도시코드 :: <input type="text" name="city" id="city"> <br>
        <input type="submit" value="등록">
        <input type="button" value="조회" onclick="show_list()">
    </form>
</div>
<%@include file="component/footer.jsp" %>
</body>
<script>
    // const joindate = () => {
    //     document.getElementsByName(joindate).value = date.toString();
    //
    // }

    const show_list = () => {
        location.href = "/list"
    }

    const saveForm = document.getElementById("save-form");
    saveForm.addEventListener("submit", function (e) {
        e.preventDefault();
        const custName = document.getElementById("cust-name");
        const phone = document.getElementById("phone");
        const address = document.getElementById("address");
        const joinDate = document.getElementById("join-date");
        const grade = document.getElementById("grade");
        const city = document.getElementById("city");
        const expPhone = /^\d{3}-\d{4}-\d{4}$/;
        const expDate = /^\d{4}-\d{2}-\d{2}$/;
        if (custName.value == "") {
            alert("이름을 입력하세요");
            custName.focus();
        } else if (!(grade.value == "A" && grade.value == "B" && grade.value == "C")) {
            alert("A, B, C로만 입력 가능합니다");
            grade.focus();
        } else if (phone.value == "") {
            alert("전화번호를 입력하세요");
            phone.focus();
        } else if (!joinDate.value.match(expDate)) {
            alert("입력 양식을 확인하세요 (yyyy-mm-dd)");
            joinDate.focus();
        } else if ()


        else {
            saveForm.submit()
        }
    })
</script>
</html>
