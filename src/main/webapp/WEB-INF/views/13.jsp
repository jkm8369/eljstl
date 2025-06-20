<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>el-jstl</h1>
		
		<h2>jstl(반복문)</h2>
		
		<h3>스클립틀릿</h3>
		
		<%@ page import = "java.util.List" %>
		<%@ page import = "com.javaex.vo.UserVo" %>
		<%
			List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
		%>
		
		
		
		<table border = "1">
		
			<thead>
				<tr>
					<td>번호</td>
					<td>이름</td>
					<td>이메일</td>
					<td>패스워드</td>
					<td>성별</td>
				</tr>
			</thead>
			
			<tbody>
				<%for(UserVo userVo : userList) {%>
					<tr>
						<td><%= userVo.getNo()%></td>
						<td><%= userVo.getName()%></td>
						<td><%= userVo.getEmail()%></td>
						<td><%= userVo.getPassword()%></td>
						<td><%= userVo.getGender()%></td>
					</tr>
				<%}%>
				
			</tbody>
			
		</table>
		
		<h3>jstl</h3>
		
		<table border = "1">
		
			<thead>
			
				<tr>
					<td>번호</td>
					<td>이름</td>
					<td>이메일</td>
					<td>패스워드</td>
					<td>성별</td>
				</tr>
				
			</thead>
			
			<tbody>
			
				<c:forEach items="${requestScope.userList}" var="userVO">
					<tr>
						<td>${userVO.no}</td>
						<td>${userVO.name}</td>
						<td>${userVO.email}</td>
						<td>${userVO.password}</td>
						<td>${userVO.gender}</td>
					</tr>
				</c:forEach>
				
				
			</tbody>
			
		</table>
		
		<h3>추가기능</h3>
		
		<table border = "1">
		
			<thead>
			
				<tr>
					<td>번호</td>
					<td>이름</td>
					<td>이메일</td>
					<td>패스워드</td>
					<td>성별</td>
					<td>index</td>
					<td>count</td>
				</tr>
				
			</thead>
			
			<tbody>
			
				<c:forEach items="${requestScope.userList}" var="userVO" begin="2" end="5" varStatus = "status">
					<tr>
						<td>${userVO.no}</td>
						<td>${userVO.name}</td>
						<td>${userVO.email}</td>
						<td>${userVO.password}</td>
						<td>${userVO.gender}</td>
						<td>${status.index}</td>
						<td>${status.count}</td>
					</tr>
				</c:forEach>
				
				
			</tbody>
			
		</table>
		
		<br><br><br><br><br><br><br><br><br><br>
		
		
	</body>

</html>