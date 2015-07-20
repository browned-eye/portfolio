angular.module('portfolio')
    .controller('HomeController', ['$scope', '$location', 'Project', function($scope, $location, Project) {
        //get the project types
        $scope.home = true;
        $scope.projects = Project.query();
        //check to see if there's a url param thats being passed
        $scope.stuff = $location.hash();
        //console.log($scope.stuff);
        //console.log(searchObject);
        /// filter the projects based on a search
        $scope.search = {};

        //for the modals in the experience section
        // $scope.modalShown = false;
        // $scope.toggleModal = function() {
        //      console.log("in here");
        //     console.log($scope.modalShown);
        //     $scope.modalShown = !$scope.modalShown;
        //     console.log($scope.modalShown);
        // };
        //
        $scope.isCollapsed = true;
        $scope.isCollapsed2 = true;
        $scope.isCollapsed3 = true;
        $scope.isCollapsed4 = true;

    }]);



//using the # in ahref makes the browser wait until the view is rendered
