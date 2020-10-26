<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:requestEncoding value="UTF-8" />
<fmt:setLocale value="${sessionScope.lang}" />
<fmt:setBundle basename="first" var="lang"/>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><fmt:message key="registration.title" bundle="${lang}"/></title>
</head>
	<body>
		<h1><fmt:message key="registration.title" bundle="${lang}"/></h1>
		<form method="post" action="${pageContext.request.contextPath}/serv/registration">
		<table>
			<caption><fmt:message key="usernameTakenMessage" bundle="${lang}"/></caption>
			<tr>
				<td><label for="username"><fmt:message key="username" bundle="${lang}"/>:</label></td>
				<td><input type="text" name="username" value="${param.username}"></td>
			</tr>
			<tr>
				<td><label for="password"><fmt:message key="password" bundle="${lang}"/>:</label></td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><label for="email"><fmt:message key="email" bundle="${lang}"/>:</label></td>
				<td><input type="text" name="email" value="${param.email}"></td>
			</tr>
			<tr>
				<td><label for="firstname"><fmt:message key="firstname" bundle="${lang}"/>:</label></td>
				<td><input type="text" name="firstname" value="${param.firstname}"></td>
			</tr>
			<tr>
				<td><label for="lastname"><fmt:message key="lastname" bundle="${lang}"/>:</label></td>
				<td><input type="text" name="lastname" value="${param.lastname}"></td>
			</tr>
			<tr>
				<td></td>
				<td  style="text-align:right"><input class="button" type="submit" value="<fmt:message key="register" bundle="${lang}"/>"></td>
			</tr>
		</table>
			
		</form>
		
		<a href="${pageContext.request.contextPath}/index.jsp"><fmt:message key="login.page" bundle="${lang}"/></a>
		<br/>
		<a href="?locale=uk">Українська</a>
		<br />
		<a href="?locale=en">English</a>
	</body>
</html>