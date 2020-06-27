<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>AnaSayfa</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<br>
	
	<div class="container">
		<div class="col-md-6">
		
			<form:form class="form-horizontal" role="form" action="registerform/register" method="post" modelAttribute="registerForm">
				<font color="blue">ÜYE GİRİŞİ</font><hr>
				<div class="form-group">
					<label class="control-label col-sm-4" >KULLANICI ADI:</label>
					<div class="col-sm-10">
						<form:input type="text" class="form-control" id="kullaniciAdi" path="kullaniciAdi" placeholder="Kullanıcı adını giriniz." />
						<font color="red"><form:errors path="kullaniciAdi" /></font>
					</div>
				</div>


				<div class="form-group">
					<label class="control-label col-sm-2" >PAROLA:</label>
					<div class="col-sm-10">
					<form:input type="password" class="form-control" id="parola" path="parola" placeholder="Paralonızı giriniz." />
						<FONT color="red"><form:errors path="parola" /></FONT>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-6" >PAROLA TEKRAR:</label>
					<div class="col-sm-10">
					<form:input type="password" class="form-control" id="parolaTekrar" path="parolaTekrar"  placeholder="Parola Tekrar giriniz." />
						<FONT color="red"><form:errors path="parolaTekrar" /></FONT>
					</div>
				</div>
				
				
				<div class="form-group">
					<label class="control-label col-sm-4" >E-POSTA:</label>
					<div class="col-sm-10">
						<form:input type="text" class="form-control" id="eposta" path="eposta" placeholder="Eposta giriniz." />
						<font color="red"><form:errors path="eposta" /></font>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">GÖNDER</button>
					</div>
				</div>
			</form:form>


		</div>
		</div>
</body>
</html>
