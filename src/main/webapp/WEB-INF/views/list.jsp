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
    <link rel="stylesheet" href="/resources/css/list.css">
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/navList.jsp"%>
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
<%@include file="component/footer.jsp"%>
</body>
<script>
    const update_ = (custno) => {

    }

    const delete_member = (custno) => {
        location.href = "/delete?custno="+custno;
    }
</script>
</html>
