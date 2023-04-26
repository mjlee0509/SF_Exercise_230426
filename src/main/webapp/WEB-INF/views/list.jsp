<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>회원목록</title>
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

        #main-text {
            text-align: center;
            margin: 0 auto;
            padding-top: 30px;
            padding-bottom: 30px;
        }

        table {
            margin: 0 auto;
            border: 1px #a39485 solid;
            font-size: .9em;
            box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
            width: 60%;
            border-collapse: collapse;
            border-radius: 5px;
            overflow: hidden;
        }

        th {
            text-align: left;
        }

        thead {
            font-weight: bold;
            color: white;
            background-color: #484848;
        }

        td, th {
            padding: 1em .5em;
            vertical-align: middle;
        }

        td {
            border-bottom: 1px solid (0,0,0, .1);
            background-color: white;

        }

        button {
            background-color: #ff0059;
            color: white;
            border: none;
            border-radius: 5px;
        }

        button:hover {
            background-color: #fc3581;
            color: white;
            cursor: pointer;
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
    <div id="main-text">
        <h2>회원목록</h2>
        <p>* 회원번호를 클릭하면 정보수정 페이지로 이동합니다</p>
    </div>
    <table>
        <thead>
        <tr>
            <th>회원번호</th>
            <th>회원이름</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
            <th>회원삭제</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="#{memberList}" var="member">
            <tr>
                <th>
                    <a href="/update?custno=${member.custno}">${member.custno}
                </th>
                <td>${member.custname}</td>
                <td>${member.phone}</td>
                <td>${member.address}</td>
                <td>${member.joindate}</td>
                <td>${member.grade}</td>
                <td>${member.city}</td>
                <td>
                    <button onclick="delete_member('${member.custno}')">삭제</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="footer">

</div>
</body>
<script>
    const update_ = (custno) => {

    }

    const delete_member = (custno) => {
        location.href = "/delete?custno="+custno;
    }
</script>
</html>
