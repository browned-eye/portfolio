angular.module("portfolio").directive('ptoMainNav2', function(){
  return {
    restrict: "E",
    templateUrl: "views/directives/ptoMainNav2.html"
    //returns true or false, sets the link active
    // controller: function($scope, $location){
    //   $scope.isPage = function(name){
    //     return new RegExp("/" + name + "($|/)").test($location.path());
    //   };
    // }
  };
});
