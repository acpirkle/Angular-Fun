var cntct = angular.module('contacts', ['ngAnimate']);

var pswrd = angular.module("securityhelper",['ngAnimate','ngclipboard']);
pswrd.service('hexafy',function(){
  this.hexval = function(x){
    return x.toString(16);
  };
});
pswrd.filter('num' ,function(){
  return function(x){
    return parseInt(x,10);
  };
});
