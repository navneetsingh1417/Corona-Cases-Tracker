<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/assets/images/i.png">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="a.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.footer {
	background: #152F4F;
	color: white;
	.
	links
	{
	ul
	{list-style-type
	:
	none;
}

li a {
	color: white;
	transition: color .2s; &: hover { text-decoration : none;
	color: #4180CB;
}

}
}
.about-company {
	i {font-size: 25px;
}

a {
	color: white;
	transition: color .2s; &:
	hover {color: #4180CB
}

}
}
.location {
	i {font-size: 18px;
}

}
.copyright p {
	border-top: 1px solid rgba(255, 255, 255, .1);
}
}
</style>
</head>
<body>


	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="/" style="font-size: 24px;"> Corona
			Tracker </a>
	</nav>

	<div class="container">
		<div class="row justify-content-center"
			style="min-height: 29rem; margin-top: 100px;">
			<div class="col-md-6 mx-auto">
				<form action="" method="post" id="FORM_ID">
					<div class="form-group">
						<h3>
							<label for="exampleFormControlSelect1">Select Country</label>
							<h3>
								<select class="form-control" id="exampleFormControlSelect1"
									style="min-width: 0rem; height: 30px;"
									onchange='changeAction(this.value)'>
									<c:forEach items="${countries}" var="country">
										<option value="${country.country}">${country.country}</option>
									</c:forEach>
								</select><br>
								<br>
								<div class="text-center">
									<input type="submit" value="Submit"
										style="border: 1px solid green; color: green; background-color: White; border-radius: 5px;" />
								</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="container text-center" style="padding-bottom: 20%;">
		<h2>
			<a class="inline_block" href="/"> Home Page </a>
		</h2>
	</div>





	<footer style="margin-bottom: 0;">
		<div class="mt-5 pt-5 pb-5 footer">
			<div class="container justify-content-center">
				<div class="row justify-content-center">
					<div class="col-md-6 col-xs-12 about-company">
						<h2>Developed By</h2>
						<h4 class="pr-5 text-white-50">Navneet Singh</h4>
					</div>
				</div>
			</div>
	</footer>
</body>
<script>
	function changeAction(val) {
		var actionValue = "country/" + val;
		document.getElementById('FORM_ID').setAttribute('action', actionValue);
	}
</script>
</body>
</html>
