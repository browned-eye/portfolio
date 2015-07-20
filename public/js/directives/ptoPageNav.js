angular.module("portfolio").directive('ptoPageNav', function(){
  return {
    restrict: "E",
    templateUrl: "views/directives/ptoPageNav.html",
    //returns true or false, sets the link active
    controller: function($scope, $location){
      $scope.isPage = function(name){
        return new RegExp("/" + name + "($|/)").test($location.path());
      };
    }
  };
});
