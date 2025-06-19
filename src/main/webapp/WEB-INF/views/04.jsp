<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.vo.UserVo" %>

<%
			int num = (int)request.getAttribute("num");
			String str = (String)request.getAttribute("str");
			UserVo userVo = (UserVo)request.getAttribute("userVo");
%>


<!DOCTYPE html>

	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>el-jstl</h1>
		<h2>el(어트리뷰트)</h2>
		
		<h3>스클립틀릿</h3>
		
		num = <%=num%> <br>
		str = <%=str%> <br>
		
		name = <%= userVo.getName() %>		<br>
		email = <%= userVo.getEmail() %>	<br>
		
		<h3>el-request의 어트리뷰트</h3>
		num = ${requestScope.num}   <br>
		str = ${requestScope.str}	<br>
		
		<!-- getter로 불러온다 -->
		userVo(0x333) <br>
		name = ${requestScope.userVo.name} <br>
		email = ${requestScope.userVo.email} <br>
		password = ${requestScope.userVo.password} <br> 
		gender = ${requestScope.userVo.gender} <br>
		
		<h3>el-request의 어트리뷰트 requestScope 생략가능</h3>
		userVo(0x333) <br>
		name = ${userVo.name} <br>
		email = ${userVo.email} <br>
		password = ${userVo.password} <br> 
		gender = ${userVo.gender} <br>
		
		<br>
		*주의 <br>
		\${param.name} --> \${name}으로 못 줄인다
		
 		
		
	</body>

</html>