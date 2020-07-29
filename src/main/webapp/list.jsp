<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>姓名</th>
			<th>密码</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="u">
			<tr>
				<td>${u.id }</td>
				<td>${u.username }</td>
				<td>${u.password }</td>
				<td>
					<a>
						<input type="button" value="修改">
					</a>
					<a>
						<input type="button" value="删除">
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>