
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/
html4/loose.dtd">
<%@ page contentType="text/html; charset = UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title>Admin does something</title>
<link href="<s:url value ="/View/default.css" />" rel="stylesheet" />
</head>

<body>
	<img id="nesoft" src="<s:url value ="/img/Experiment.png" />">
	<h2 id="text">
		<s:text name="global.Addteacher"></s:text>
	</h2>
	<s:bean name="Model.Teacher" var="teacher" />


	<s:form action="sss">
		<s:push value="teacher">
			<s:hidden name="Teacher_ID"></s:hidden>
			<s:textfield name="Teacher_Name" key="global.Fullname"></s:textfield>
			<s:textfield name="Teacher_Email" key="global.Email"></s:textfield>
			<s:radio list="{getText('global.Male') ,getText('global.Female')}"
				name="Teacher_Gender" key="global.Gender" />
			<s:textfield name="Teacher_Subject" key="global.Subject" />
			<s:textfield name="Teacher_PhoneNumber" key="global.Phone" />
			<s:submit key="global.Submit" name="submit"></s:submit>
		</s:push>
	</s:form>


	<s:if test="teachers.size() > 0">
		<table>
			<tr class="even">
				<th>Name</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Subject</th>
				<th>Phone Number</th>
				<th>Edit</th>
				<th>Delete</th>

			</tr>

			<s:iterator value="teachers" status="teacherStatus">
				<tr
					class="<s:if test="#teacherStatus.odd == true">odd</s:if> 
				<s:else>even</s:else>">

					<td><s:property value="Teacher_Name" /></td>
					<td><s:property value="Teacher_Email" /></td>
					<td><s:property value="Teacher_Gender" /></td>
					<td><s:property value="Teacher_Subject" /></td>
					<td><s:property value="Teacher_PhoneNumber" /></td>
					<td><s:url id="editURL" action="editTeacher">
							<s:param name="Teacher_ID" value="%{Teacher_ID}"></s:param>
						</s:url> <s:a href="%{editURL}">Edit</s:a></td>
					<td><s:url id="deleteURL" action="deleteTeacher">
							<s:param name="Teacher_ID" value="%{Teacher_ID}"></s:param>
						</s:url> <s:a href="%{deleteURL}">Delete</s:a></td>
				</tr>
			</s:iterator>
		</table>
	</s:if>
	<div id="internationalization">
		<s:url id="LocaleEN" namespace="/" action="sss">
			<s:param name="request_locale">en</s:param>
		</s:url>
		<s:url id="LocaleES" namespace="/" action="sss">
			<s:param name="request_locale">es</s:param>
		</s:url>
		<s:url id="LocaleZH" namespace="/" action="sss">
			<s:param name="request_locale">zh</s:param>
		</s:url>
		<s:url id="LocaleAR" namespace="/" action="sss">
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
		<a href="https://github.com/prointernal/Nesoft_Administration_System/tree/master/X_Project_X">github </a>
		<s:text name="global.Footertwo"></s:text>
	</p>
	</footer>
</body>
</html>