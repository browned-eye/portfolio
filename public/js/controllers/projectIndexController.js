angular.module('portfolio')
    .controller('ProjectIndexController', ['$scope', '$location', '$anchorScroll', '$routeParams', 'Project', function($scope, $location,$anchorScroll, $routeParams, Project) {

        $scope.home = false;
        //get the project types
        $scope.projects = Project.query();
        //check to see if there's a url param thats being passed
        $scope.stuff = $location.hash();
        //console.log($scope.stuff);
        //console.log(searchObject);
        /// filter the projects based on a search
        $scope.search = {};
        $scope.isCollapsed = true;
        $scope.isCollapsed2 = true;
        $scope.isCollapsed3 = true;
        $scope.isCollapsed4 = true;
        $scope.isCollapsed5 = true;
        $scope.isCollapsed6 = true;
        $scope.isCollapsed7 = true;
        $scope.isCollapsed8 = true;
        $scope.isCollapsed9 = true;

        $scope.contactItems = [{
            "name": 'janine.heiser@gmail.com',
            "link": 'mailto:janine.heiser@gmail.com',
            "thumbimage": 'email.png'
        }, {
            "name": 'Github',
            "link": 'http://github.com/j9recurses',
            "thumbimage": 'github2.png'
        }, {
            "name": 'LinkedIn',
            "link": 'http://www.linkedin.com/in/janineheiser',
            "thumbimage": 'linkedin.png'
        }];


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
