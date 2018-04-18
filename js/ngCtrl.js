cntct.controller("cntctbk", function($scope, $http) {
  $scope.mastercontact = {
    name: "",
    phone: "",
    state: "",
    email: ""
  };
  $scope.myCol = "#666";
  $scope.cqby = "name";
  $scope.getcontacts = function() {
    $http.get("php/ajax2Data.php?ajaxid=contacts").then(function(response) {
      $scope.contacttable = response.data;
    });
  };

  $http.get("php/ajax2Data.php?ajaxid=states").then(function(response) {
    $scope.states = response.data.states;
  });

  $scope.addcontact = function() {
    console.log($scope.contact);
    $http({
      url: 'php/ajax2Data.php?ajaxid=addcontact',
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
angular.bootstrap(document.getElementById('contact_book'),['contacts']);

pswrd.controller('pswrdgen', function($scope, $http, hexafy) {
  $scope.genOpt = {
    num: 2,
    type: "_"
  };
  $scope.hexconvert = 255;
  $scope.hex = function(x) {
    $scope.returnedhex = hexafy.hexval(x);
  };
  $scope.hex($scope.hexconvert);
  $scope.generate = function() {
    $http({
      url: 'php/ajax2Data.php?ajaxid=pswrdgen',
      method: 'POST',
      data: $scope.genOpt
    }).then(function(response) {
      $scope.password = response.data;
    });
  };

});

jQuery(function ($) {
  $('#cpypswrdbtn').click(function () {
    var t = $(this);
    t.tooltip({title:"Copied!",trigger:"manual"});
    t.tooltip('show');
    setTimeout(function(){
      t.tooltip('hide');
    },2000);
  });
});
