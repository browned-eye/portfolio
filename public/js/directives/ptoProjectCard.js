angular.module("portfolio").directive('ptoProjectCard', function(){
  return {
    restrict: "E",
    templateUrl: "views/directives/ptoProjectCard.html",
    controller: function($scope, $location){

    //   $scope.isPage = function(name){
    //     return new RegExp("/" + name + "($|/)").test($location.path());
    // };
    }
  };
});
