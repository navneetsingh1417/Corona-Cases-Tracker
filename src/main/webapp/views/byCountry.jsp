<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/assets/images/i.png">
<meta charset="ISO-8859-1">
<title>Corona Tracker</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:  rgba(0,0,0,.9);
   color: white;
   text-align: center;
}
</style>
</head>
<body>
<nav class="navbar navbar-light bg-light justify-content-center">
  <a href="/"><span class="navbar-brand mx-auto " id="header">Corona Tracker</span></a>
</nav>



<div style="margin-top:5%;">

		<div class="row">
			<div class="col-md-6">
				<div class="card text-white bg-primary mb-3 mx-auto"
					style="max-width: 18rem;">
					<div class="card-header mx-auto">${country.country }</div>
					<div class="card-body mx-auto">
						<h5 class="card-title">Total Confirmed Cases</h5>
						<p class="card-text text-center">${country.totalconfirmed}</p>
					</div>
				</div>


			</div>
			<div class="col-md-6">

				<div class="card text-white bg-info mb-3 mx-auto"
					style="max-width: 18rem;">
					<div class="card-header mx-auto">${country.country }</div>
					<div class="card-body mx-auto">
						<h5 class="card-title">Currently Active</h5>
						<p class="card-text text-center">${country.active}</p>
					</div>
				</div>
			</div>



		</div>

	</div>

	<div>

		<div class="row">
			<div class="col-md-6">

				<div class="card text-white bg-danger mb-3 mx-auto"
					style="max-width: 18rem;">
					<div class="card-header mx-auto">${country.country }</div>
					<div class="card-body mx-auto">
						<h5 class="card-title">Total Deaths</h5>
						<p class="card-text text-center">${country.totaldeaths}</p>
					</div>
				</div>

			</div>
			<div class="col-md-6">

				<div class="card text-white bg-success mb-3 mx-auto"
					style="max-width: 18rem;">
					<div class="card-header mx-auto">${country.country }</div>
					<div class="card-body mx-auto">
						<h5 class="card-title" >Total Recovered</h5>
						<p class="card-text text-center">${country.totalrecovered}</p>
					</div>
				</div>
			</div>



		</div>

	</div>

	<div class="container text-center">
		<div class="row justify-content-center">
			<div class="col-md-2">
				<a class="inline_block" href="/"> Home Page </a>
			</div>
			<div class="col-md-2">
				<a class="inline_block" href="/country"> Go Back </a>
			</div>
		</div>

	</div>

	<footer
		class="bd-footer p-3 p-md-5 mt-5 bg-light text-center text-sm-left">

		<div class="row justify-content-center">

			<div class="col-md-4">
				<p>
					<strong>Developed by:</strong> Navneet Singh,<i>CSE Student</i>
				</p>
			</div>

			<div class="col-md-4">

				<ul class="bd-footer-links d-flex d-inline-flex">
					<li class="d-inline-flex  align-items-center mr-2"><a
						href="https://github.com/navneetsingh1417">GitHub</a></li>
					<li class="d-inline-flex  align-items-center mr-2"><a
						href="https://www.linkedin.com/in/navneetsingh1417">Linkedin</a></li>
					<li class="d-inline-flex  align-items-center mr-2"><a
						href="https://www.instagram.com/i_navneets">Instagram</a></li>
				</ul>

			</div>


		</div>

	</footer>
</body>
</html>