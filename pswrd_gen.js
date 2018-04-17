var app = angular.module("securityhelper",['ngAnimate']);
app.service('hexafy',function(){
  this.hexval = function(x){
    return x.toString(16);
  };
});
app.filter('num' ,function(){
  return function(x){
    return parseInt(x,10);
  };
});

app.controller('pswrdgen',function($scope,$http, hexafy) {
  $scope.genOpt = {num:2,type:"_"};
  $scope.hexconvert = 255;
  $scope.hex = function(x){
    $scope.returnedhex = hexafy.hexval(x);
  };
  $scope.hex($scope.hexconvert);
  $scope.generate = function(){
    $http({
      url: 'test.php?ajaxid=pswrdgen',
      method: 'POST',
      data: $scope.genOpt
    }).then(function(response){
        $scope.password = response.data;
    });
  };
});
