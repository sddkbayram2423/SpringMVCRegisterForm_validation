<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Sonuç Başarılı</title>
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
	<hr/>
	<div class="container">
		<div class="col-md-6">

			<div class="alert alert-secondary">
				<font color="red"> ${registerForm.kullaniciAdi}</font> hoşgeldiniz
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="kullaniciAdi">KULLANICI
					ADI:</label>
				<div class="col-sm-10"><font color="green">${registerForm.kullaniciAdi}</font></div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="parola">PAROLA:</label>
				<div class="col-sm-10"><font color="green">${registerForm.parola}</font></div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-4" for="kullaniciAdi">E-POSTA:</label>
				<div class="col-sm-10"><font color="green">${registerForm.eposta}</font></div>
			</div>
			
			<div class="alert alert-danger">
			<a href="">Ana Sayfaya Git</a>
		</div>

		</div>
	</div>

</body>
</html>