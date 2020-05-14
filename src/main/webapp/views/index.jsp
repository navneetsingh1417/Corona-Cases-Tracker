<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<div style="margin-top: 5%;">

		<div class="row">
			<div class="col-md-6">
				<div class="card text-white bg-primary mb-3 mx-auto"
					style="max-width: 25rem; height: 150px;">
					<div class="card-header mx-auto" style="font-size: 20px;">Global</div>
					<div class="card-body mx-auto">
						<h4 class="card-title">Total Confirmed Cases</h4>
						<h4 class="card-text text-center">${global.totalconfirmed}</h4>
					</div>
				</div>


			</div>
			<div class="col-md-6">

				<div class="card text-white bg-info mb-3 mx-auto"
					style="max-width: 25rem; height: 150px;">
					<div class="card-header mx-auto" style="font-size: 20px;">Global</div>
					<div class="card-body mx-auto">
						<h4 class="card-title">Currently Active</h4>
						<h4 class="card-text text-center">${globalActive}</h4>
					</div>
				</div>
			</div>



		</div>

	</div>

	<div style="margin-top: 5%;">

		<div class="row">
			<div class="col-md-6">

				<div class="card text-white bg-danger mb-3 mx-auto"
					style="max-width: 25rem; height: 150px;">
					<div class="card-header mx-auto" style="font-size: 20px;">Global</div>
					<div class="card-body mx-auto">
						<h4 class="card-title">Total Deaths</h4>
						<h4 class="card-text text-center">${global.totaldeaths}</h4>
					</div>
				</div>

			</div>
			<div class="col-md-6">

				<div class="card text-white bg-success mb-3 mx-auto"
					style="max-width: 25rem; height: 150px;">
					<div class="card-header mx-auto" style="font-size: 20px;">Global</div>
					<div class="card-body mx-auto">
						<h4 class="card-title">Total Recovered</h4>
						<h4 class="card-text text-center">${global.totalrecovered}</h4>
					</div>
				</div>
			</div>



		</div>

	</div>


	<div class="container text-center">
		<h2>
			<a class="inline_block" href="country"> View by Country </a>
		</h2>
	</div>

	<footer>
		<div class="mt-5 pt-5 pb-5 footer">
			<div class="container justify-content-center">
				<div class="row justify-content-center">
					<div class="col-md-6 col-xs-12 about-company">
						<h2>Developed By</h2>
						<h4 class="pr-5 text-white-50">Navneet Singh,</h4>
						<h4 class="pr-5 text-white-50">
							<i>CSE Student</i>
						</h4>
					</div>
					<div class="col-md-6">
						<h2 class="mt-lg-0 mt-sm-3">Social Links</h2>
						<ul class="m-0 p-0">
							<h4 class="pr-5 text-white-50">
								<a href="https://www.linkedin.com/in/navneetsingh1417">Linkedin</a>
							</h4>
							<h4 class="pr-5 text-white-50">
								<a href="https://www.github.com/navneetsingh1417">Github</a>
							</h4>
							<h4 class="pr-5 text-white-50">
								<a href="https://www.instagram.com/i_navneets">Instagram</a>
							</h4>
						</ul>
					</div>
				</div>
			</div>
	</footer>
</body>
</html>