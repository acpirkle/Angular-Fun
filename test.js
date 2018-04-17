var app = angular.module('myApp', ['ngAnimate']);
app.controller("myCtrl", function($scope, $http) {
  $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
  $scope.mastercontact = {name:"",phone:"",state:"",email:""};
  $scope.myCol = "#666";
  $scope.cqby = "name";
  $scope.getcontacts = function(){
    $http.get("test.php?ajaxid=contacts").then(function(response) {
      $scope.contacttable = response.data;
    });
  };

  $http.get("test.php?ajaxid=states").then(function(response) {
    $scope.states = response.data.states;
  });

  $scope.addcontact = function() {
    console.log($scope.contact);
    $http({
      url: 'test.php?ajaxid=addcontact',
      method: 'POST',
      data: $scope.contact
    }).then(function(response) {
      alert(response.data);
      $scope.getcontacts();
      $scope.contact = angular.copy($scope.mastercontact);
      $scope.contactform.$setPristine();
      $scope.contactform.$setUntouched();
    });
  };

  $scope.getcontacts();


});
