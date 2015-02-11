<!DOCTYPE html>
<html class="bg-black">
<head>
	<meta charset="UTF-8">
	<title>Log in</title>
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<asset:stylesheet src="login.css"/>
	<asset:javascript src="login.js"/>
</head>
<body class="bg-black">

<div class="form-box" id="login-box">
	<g:if test='${flash.message}'>
		<div class='login_message'>${flash.message}</div>
	</g:if>
	<div class="header">Sign In</div>

	<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
		<div class="body bg-gray">
			<div class="form-group">
				<input type="text" name="j_username" class="form-control" placeholder="User ID"/>
			</div>
			<div class="form-group">
				<input type="password" name="j_password" class="form-control" placeholder="Password"/>
			</div>
			<div class="form-group">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<g:message code="springSecurity.login.remember.me.label"/>
			</div>
		</div>
		<div class="footer">
			<button type="submit" class="btn bg-olive btn-block">Sign me in</button>
		</div>
	</form>

</div>

<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
