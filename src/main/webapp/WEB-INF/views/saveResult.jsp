<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>저장결과</title>
    <script>
        const result = '${result}';
        console.log(result);
        if (result > 0) {
            alert("신규 회원 등록이 완료되었습니다.")
            location.href = "/save"
            // 있다가 리스트 만들고나서 여기 /list로 수정하셈
        } else {
            alert("다시 등록하세요")
            location.href = "/save"
        }
    </script>

</head>
<body>

</body>
</html>
