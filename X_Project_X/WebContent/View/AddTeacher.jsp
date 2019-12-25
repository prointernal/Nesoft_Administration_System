<%@ page contentType="text/html; charset = UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title>Hello World</title>
<link href="<s:url value ="/View/default.css" />" rel="stylesheet" />
</head>

<body>
	<img id="nesoft" src="<s:url value ="/img/Experiment.png" />">
	<h3 id="text"><s:text name="global.Addteacher"></s:text></h3>
	<s:form action="addTeacher">
		<s:textfield name="Teacher_Name" key="global.Fullname"></s:textfield>
		<s:textfield name="Teacher_Email" key="global.Email"></s:textfield>
		<s:radio list="{getText('global.Male') ,getText('global.Female')}"
			name="Teacher_Gender" key="global.Gender" />
		<s:textfield name="Teacher_Subject" key="global.Subject" />
		<s:textfield name="Teacher_PhoneNumber" key="global.Phone" />
		<s:submit key="global.Submit" name="submit"></s:submit>
	</s:form>
	<div id="internationalization">
		<s:url id="LocaleEN" namespace="/" action="Addteacher">
			<s:param name="request_locale">en</s:param>
		</s:url>
		<s:url id="LocaleES" namespace="/" action="Addteacher">
			<s:param name="request_locale">es</s:param>
		</s:url>
		<s:url id="LocaleZH" namespace="/" action="Addteacher">
			<s:param name="request_locale">zh</s:param>
		</s:url>
		<s:url id="LocaleAR" namespace="/" action="Addteacher">
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