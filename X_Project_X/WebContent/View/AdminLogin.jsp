<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/
html4/loose.dtd">
<html>

<head>
<title>Login</title>
<link href="<s:url value ="/View/default.css" />" rel="stylesheet" />
<s:head />
</head>

<body>
	<img id="nesoft" src="<s:url value ="/img/Experiment.png" />">
	<h3 id="text">
		<s:text name="global.Loginform" />
	</h3>
	<div class="container" id="container">
		<div class="form-container sign-in-container">

			<s:form action="login" method="post">
				<s:textfield name="Admin_Username" key="global.UserName"></s:textfield>
				<s:password name="Admin_Password" key="global.Password"></s:password>
				<s:submit key="global.Submit" name="submit"></s:submit>
				<br>
				<s:reset key="global.Reset" name="reset"></s:reset>
			</s:form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
					<h1>
						<s:text name="global.Welcomeback"></s:text>
					</h1>
					<p>
						<s:text name="global.Righttext"></s:text>
					</p>
					<br>
					<button>
						<a id="text" href="<s:url value ="/View/AdminRegister.jsp" />">
							<s:text name="global.Register" />
						</a>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div id="internationalization">
		<s:url id="LocaleEN" namespace="/" action="locale1">
			<s:param name="request_locale">en</s:param>
		</s:url>
		<s:url id="LocaleES" namespace="/" action="locale1">
			<s:param name="request_locale">es</s:param>
		</s:url>
		<s:url id="LocaleZH" namespace="/" action="locale1">
			<s:param name="request_locale">zh</s:param>
		</s:url>
		<s:url id="LocaleAR" namespace="/" action="locale1">
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