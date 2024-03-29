<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_08_forEach.jsp</title>
</head>
<body>
	<%
	List<Integer> aList = new ArrayList<Integer>();
	aList.add(10);
	aList.add(20);
	aList.add(30);
	aList.add(40);
	aList.add(50);

	for (int i = 0; i < aList.size(); i++) {
		out.print("<p>" + aList.get(i) + "</p>");
	}
	%>

	<c:forEach items="<%=aList%>" var="data" varStatus="status">
		<p>count : ${status.count} / [${status.index}] : ${data}</p>
	</c:forEach>

</body>
</html>