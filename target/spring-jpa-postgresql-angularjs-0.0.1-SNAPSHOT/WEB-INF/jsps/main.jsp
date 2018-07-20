<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Spring Boot Example</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.6.0/angular.min.js"></script>
<script src="/js/angular.js"></script>
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

	
	<jsp:include page="/WEB-INF/jsps/banner.jsp?origin=main" />

	<div class="container" ng-app="app">
		<h1>Customer Management</h1>
		
<!-- 		<div class="row"> -->
<!-- 			<div ng-controller="clearallController" -->
<!-- 				class="col-xs-12 col-sm-6 col-md-3"> -->
<!-- 				<button class="btn btn-primary" ng-click="clearAll()">Clear</button> -->
<!-- 				<p>{{postResultMessage}}</p> -->
<!-- 			</div> -->
<!-- 		</div> -->

		<div class="row">
			<div ng-controller="postController"
				class="col-xs-12 col-sm-6 col-md-3">
				<form name="customerForm" ng-submit="submitForm()">
					<label>FirstName</label> <input type="text" name="firstname"
						class="form-control" ng-model="firstname" /> <label>LastName</label>
					<input type="text" name="lastname" class="form-control"
						ng-model="lastname" />

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<p>{{postResultMessage}}</p>
			</div>
		</div>

		<div class="row">
			<div ng-controller="getallcustomersController"
				class="col-xs-12 col-sm-6 col-md-3">
				<h3>All Customers</h3>

				<button ng-click="getAllCustomers()">Get All Customers</button>

				<div ng-show="showAllCustomers">
					<ul class="list-group">
						<li ng-repeat="customer in allcustomers.data"><h4
								class="list-group-item">
								<strong>Customer {{$index}}</strong><br /> Id: {{customer.id}}<br />
								First Name: {{customer.firstName}}<br /> Last Name:
								{{customer.lastName}}
							</h4></li>
					</ul>
				</div>
				<p>{{getResultMessage}}</p>
			</div>

			<div ng-controller="getcustomerController"
				class="col-xs-12 col-sm-6 col-md-3">
				<h3>Customer by ID</h3>

				<input type="text" class="form-control" style="width: 100px;"
					ng-model="customerId" /> <br />
				<button ng-click="getCustomer()">Get Customer</button>

				<div ng-show="showCustomer">
					<!-- 					Id: {{customer.data.id}}<br /> First Name: -->
					<!-- 					{{customer.data.firstName}}<br /> Last Name: -->
					<!-- 					{{customer.data.lastName}} -->
					<ul class="list-group">
						<li>
							<h4 class="list-group-item">
								<strong>Customer {{$index}}</strong><br /> Id:
								{{customer.data.id}}<br /> First Name:
								{{customer.data.firstName}}<br /> Last Name:
								{{customer.data.lastName}}
							</h4>
						</li>
					</ul>
				</div>
				<p>{{getResultMessage}}</p>
			</div>

			<div ng-controller="getcustomersbylastnameController"
				class="col-xs-12 col-sm-6 col-md-3">
				<h3>Customers by LastName</h3>

				<input type="text" class="form-control" style="width: 100px;"
					ng-model="customerLastName" /><br />
				<button ng-click="getCustomersByLastName()">Get Customers</button>

				<div ng-show="showCustomersByLastName">

					<ul class="list-group">
						<li ng-repeat="customer in allcustomersbylastname.data">
							<h4 class="list-group-item">
								<strong>Customer {{$index}}</strong><br /> Id: {{customer.id}}<br />
								First Name: {{customer.firstName}}<br /> Last Name:
								{{customer.lastName}}
							</h4>
						</li>
					</ul>
				</div>
				<p>{{getResultMessage}}</p>
			</div>


		</div>
	</div>
	<div class="container-fluid">
		<div id="footer">
			<p>footer</p>
		</div>
	</div>


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