var app = angular.module('app', []);

app.controller('clearallController', ['$scope', '$http', '$location', '$window', function($scope, $http, $location, $window) {

	$scope.clearAll = function() {
		$window.location.reload();
	}

}]);

app.controller('postController', ['$scope', '$http', '$location', function($scope, $http, $location) {
	
	$scope.submitForm = function() {
		
		var url = "postcustomer";

		var config = {
			headers : {
				'Content-Type' : 'application/json;charset=utf-8;'
			}
		}

		var data = {
			firstName : $scope.firstname,
			lastName : $scope.lastname
		};


		$http.post(url, data, config).then(function(response) {
			$scope.postResultMessage = "Successful!";
		}, function(response) {
			$scope.postResultMessage = "Fail!";
		});

		$scope.firstname = "";
		$scope.lastname = "";
	}
}]);

app.controller('getallcustomersController', ['$scope', '$http', '$location', function($scope, $http, $location) {

	$scope.showAllCustomers = false;

	$scope.getAllCustomers = function() {
		
		var url = "findall";

		var config = {
			headers : {
				'Content-Type' : 'application/json;charset=utf-8;'
			}
		}

		$http.get(url, config).then(function(response) {

			if (response.data.status == "Done") {
				$scope.allcustomers = response.data;
				$scope.showAllCustomers = true;
				
			} else {
				$scope.getResultMessage = "get All Customers Data Error!";
			}

		}, function(response) {
			$scope.getResultMessage = "Fail!";
		});

	}

	
}]);


app.controller('getcustomerController', ['$scope', '$http', '$location', function($scope, $http, $location) {

	$scope.showCustomer = false;

	$scope.getCustomer = function() {
		var url = "customer/" + $scope.customerId;

		var config = {
			headers : {
				'Content-Type' : 'application/json;charset=utf-8;'
			}
		}

		$http.get(url, config).then(function(response) {

			if (response.data.status == "Done") {
				$scope.customer = response.data;
				$scope.showCustomer = true;

			} else {
				$scope.getResultMessage = "Customer Data Error!";
			}

		}, function(response) {
			$scope.getResultMessage = "Fail!";
		});

	}
}]);

app.controller('getcustomersbylastnameController', ['$scope', '$http', '$location', function($scope, $http, $location) {

	$scope.showCustomersByLastName = false;
	
	$scope.getCustomersByLastName = function() {
		var url = "findbylastname";

		var config = {
			headers : {
				'Content-Type' : 'application/json;charset=utf-8;'
			},

			params : {
				'lastName' : $scope.customerLastName
			}
		}

		$http.get(url, config).then(function(response) {

			if (response.data.status == "Done") {
				$scope.allcustomersbylastname = response.data;
				$scope.showCustomersByLastName = true;
			
			} else {
				$scope.getResultMessage = "Customer Data Error!";
			}

		}, function(response) {
			$scope.getResultMessage = "Fail!";
		});

	}
}]);

