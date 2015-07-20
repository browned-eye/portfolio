angular.module('portfolio')
    .controller('ProjectIndexController', ['$scope', '$location', 'Project', function($scope, $location, Project) {

        $scope.home = false;
        //get the project types
        $scope.projects = Project.query();
        //check to see if there's a url param thats being passed
        $scope.stuff = $location.hash();
        //console.log($scope.stuff);
        //console.log(searchObject);
        /// filter the projects based on a search
        $scope.search = {};

        //use these functions to return whether or not the div is hovered
        // $scope.hoverIn = function() {
        //     $scope.hoverDiv = true;
        // };

        // $scope.hoverOut = function() {
        //     $scope.hoverDiv = false;
        // };
        //The above was all wrong. using this caused problems with bootstrap rows
        //where the cards where too big and pushing other cards down.
        //Need to wrap groups of three project cards in a row.
        //then using this was a problem because it didn't know which element to bind
        //the mouse listener to and changed the whole row. Need to get the specific
        //element for this- used a directive to grab the parent element and bind
        //the mouselistner to to the parent element; this allowed me to
        //just update the css of the child to display none to show.
    }]);



//using the # in ahref makes the browser wait until the view is rendered
