<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 페이지</title>
</head>
<body>
<img src="/media/5-1.png"/>
<table border="1">
  <tr>
    <th>username</th>
    <th>email</th>
    <th>createDate</th>
    <th>update</th>
  </tr>
  <c:forEach var="mem" items="${mems}">
  <tr>
    <td>${mem.username}</td>
    <td>${mem.email}</td>
    <td>${mem.createDate}</td>
    <td><button onclick="mem_update(${mem.id})">edit</button></td>
  </tr>
  </c:forEach>
</table>
<a href="/mem/join">회원가입</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	function mem_update(mem_id){
		location.href = '/mem/'+mem_id;
	}
</script>
</body>
</html>