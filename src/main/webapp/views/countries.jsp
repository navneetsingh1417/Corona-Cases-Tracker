<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Tracker</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
input[type=submit] {
  background-color: #ffffff;
  border : 2px solid #4CAF50;
  color : #4CAF50;
  border-radius:5px;
  padding: 6px 16px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
input[type=submit]:hover{
	background-color: #4CAF50;
	color : #ffffff;
}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:  rgba(0,0,0,.9);
   color: white;
   text-align: center;
}

#formId{
	margin-top:15%;
	padding-down:100%;
}
body{
	min-height:100%;
}
</style>

</head>
<body>
<nav class="navbar navbar-light bg-light justify-content-center">
  <a href="/"><span class="navbar-brand mx-auto " id="header">Corona Tracker</span></a>
</nav>

	<section>
		<div class="container-fluid">
			<h1 class="text-center text-capitalize  pt-5 ">COVID-19</h1>
			<hr class="w-20 mx-auto">
			<div class="row mb-5">
				<div class="col-lg-6 col-md-6 col-12">
					<img src="/assets/images/b.jpg"
						class="image-fluid w-100 h-100">

				</div>

				<div class="col-lg-6 col-md-6 col-12">
					<h1 class="ml-4">Corona Virus</h1>
					<hr>
					<p class="ml-4 pt-auto">Coronavirus disease (COVID-19) is an
						infectious disease caused by a newly discovered coronavirus. Most
						people infected with the COVID-19 virus will experience mild to
						moderate respiratory illness and recover without requiring special
						treatment. Older people, and those with underlying medical
						problems like cardiovascular disease, diabetes, chronic
						respiratory disease, and cancer are more likely to develop serious
						illness. The best way to prevent and slow down transmission is be
						well informed about the COVID-19 virus, the disease it causes and
						how it spreads. Protect yourself and others from infection by
						washing your hands or using an alcohol based rub frequently and
						not touching your face. The COVID-19 virus spreads primarily
						through droplets of saliva or discharge from the nose when an
						infected person coughs or sneezes, so it’s important that you also
						practice respiratory etiquette (for example, by coughing into a
						flexed elbow). At this time, there are no specific vaccines or
						treatments for COVID-19. However, there are many ongoing clinical
						trials evaluating potential treatments. WHO will continue to
						provide updated information as soon as clinical findings become
						available.</p>

				</div>
			</div>
		</div>


	</section>
	
<div class="container">
<div class="row" id="formId">
	<div class="md-4 mx-auto">
		<div class="text-center">
			<h2>Select Country</h2>
		</div>
		
		<form action="" method="post" id="FORM_ID">
			<select name="category"
				onchange='changeAction(this.value)'>
				<c:forEach items="${countries}" var="country">
					<option value="${country.slug}">${country.country}</option>
				</c:forEach>
			</select> <br/><br/>
			<div class="text-center">
				<input type="submit" value="Submit" />
			</div>
			 
		</form>
	</div>
</div>
</div>



	<div class="container text-center" style="padding-bottom:20%;">
  <a class="inline_block" href="/">
  Home Page
  </a>
</div>


<footer
		class="bd-footer p-3 p-md-5 mt-5 bg-light text-center text-sm-left" >

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
	
	<script>
	function changeAction(val){
		var actionValue = "country/"+val;
	    document.getElementById('FORM_ID').setAttribute('action', actionValue);
	}
	</script>
</body>
</html>