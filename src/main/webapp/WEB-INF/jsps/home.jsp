<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Spring Boot Example</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="https://fonts.googleapis.com/css?family=Abel"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
<link href="<%=request.getContextPath()%>/resources/style.css"
	rel="stylesheet">
</head>
<body>

	<jsp:include page="/WEB-INF/jsps/banner.jsp?origin=home" />

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="card">
					<img src="<%=request.getContextPath()%>/images/Knight.svg" alt=""
						width="100">
					<h2>awsome</h2>
					<p>Diese Webapp ist großartig!</p>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="card">
					<img src="<%=request.getContextPath()%>/images/Unicorn.svg" alt=""
						width="100">
					<h2>brilliant</h2>
					<p>Diese Webapp ist brilliant!</p>
				</div>

			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="card">
					<img src="<%=request.getContextPath()%>/images/Werewolf.svg" alt=""
						width="100">
					<h2>unique</h2>
					<p>Diese Webapp ist einzigartig!</p>
				</div>

			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="card">
					<img src="<%=request.getContextPath()%>/images/Orc.svg" alt=""
						width="100">
					<h2>overwhelming</h2>
					<p>Diese Webapp ist überwältigend!</p>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/jsps/footer.jsp" />

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
		integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
		crossorigin="anonymous"></script>
</body>
</html>