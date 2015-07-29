angular.module("portfolio").directive('ptoPageNavSingle', function() {
    return {
        restrict: "E",
        templateUrl: "views/directives/ptoPageNavSingle.html",
        //returns true or false, sets the link active
        controller: function($scope, $location) {
            $scope.isPage = function(name) {
                return new RegExp("/" + name + "($|/)").test($location.path());
            };

        }
    };
});
