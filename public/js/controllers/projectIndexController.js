angular.module('portfolio')
    .controller('ProjectIndexController', ['$scope', '$location', '$anchorScroll', '$routeParams', 'Project', 'screenSize', function($scope, $location, $anchorScroll, $routeParams, Project, screenSize) {

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
        // pagination! piping the filters hellah times for the win!!!!
        $scope.currentPage = 1;
        if (screenSize.is('xs')) {
            $scope.itemsPerPage = 5;
        }
        else if (screenSize.is('sm')) {
            $scope.itemsPerPage = 9;
        }
        else {
            $scope.itemsPerPage = 9;
        }

    }]);



//using the # in ahref makes the browser wait until the view is rendered
