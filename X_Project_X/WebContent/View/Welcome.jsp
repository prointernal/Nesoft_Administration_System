
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/
html4/loose.dtd">
<%@ page contentType="text/html; charset = UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title>Welcome Admin</title>
<link href="<s:url value ="/View/default.css" />" rel="stylesheet" />
</head>

<body>
		<img id="nesoft" src="<s:url value ="/img/Experiment.png" />">
	<a id="text" href="<%=request.getContextPath()%>/View/AddTeacher.jsp">Add
		Teacher</a>
	<s:form action="search" id="search">
		<s:textfield name="name" key="global.Fullname" />
	</s:form>
	<table>
		<tr>
			<th><s:text name="global.Fullname"></s:text></th>
			<th><s:text name="global.Email"></s:text></th>
			<th><s:text name="global.Gender"></s:text></th>
			<th><s:text name="global.Subject"></s:text></th>
			<th><s:text name="global.Phone"></s:text></th>
			<th><s:text name="global.Edit"></s:text></th>
			<th><s:text name="global.Delete"></s:text></th>
		</tr>

		<s:iterator value="teachers" status="teacherStatus">
			<tr>
				<td><s:property value="Teacher_Name" /></td>
				<td><s:property value="Teacher_Email" /></td>
				<td><s:property value="Teacher_Gender" /></td>
				<td><s:property value="Teacher_Subject" /></td>
				<td><s:property value="Teacher_PhoneNumber" /></td>

				<td><s:url id="editURL" action="editTeacher">
						<s:param name="Teacher_ID" value="%{Teacher_ID}"></s:param>
					</s:url> <s:a href="%{editURL}">
						<s:text name="global.Edit"></s:text>
					</s:a></td>

				<td><s:url id="deleteURL" action="deleteTeacher">
						<s:param name="Teacher_ID" value="%{Teacher_ID}"></s:param>
					</s:url> <s:a href="%{deleteURL}">
						<s:text name="global.Delete"></s:text>
					</s:a></td>
			</tr>
		</s:iterator>
	</table>
	<div id="internationalization">
		<s:url id="LocaleEN" namespace="/" action="Welcome">
			<s:param name="request_locale">en</s:param>
		</s:url>
		<s:url id="LocaleES" namespace="/" action="Welcome">
			<s:param name="request_locale">es</s:param>
		</s:url>
		<s:url id="LocaleZH" namespace="/" action="Welcome">
			<s:param name="request_locale">zh</s:param>
		</s:url>
		<s:url id="LocaleAR" namespace="/" action="Welcome">
			<s:param name="request_locale">ar_AE</s:param>
		</s:url>
		<s:a href="%{LocaleEN}" id="in">ENGLISH</s:a>
		<s:a href="%{LocaleES}" id="in">SPANISH</s:a>
		<s:a href="%{LocaleZH}" id="in">CHINESE</s:a>
		<s:a href="%{LocaleAR}" id="in">ARABIC</s:a>
	</div>
	<footer>
	<p>
		<s:text name="global.Footerone"></s:text>
		<a href="https://github.com">github </a>
		<s:text name="global.Footertwo"></s:text>
	</p>
	</footer>


</body>
</html>