<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Logging In</title>
<link href="<s:url value ="/View/default.css" />" rel="stylesheet" />
</head>
<body>
	<h3 id="text"><s:text name="global.Loginerror"></s:text></h3>
	<s:include value="AdminLogin.jsp"></s:include>

</body>
</html>