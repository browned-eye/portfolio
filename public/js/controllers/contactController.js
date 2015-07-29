//http://rabidgadfly.com/page/2/

angular.module('portfolio')
    .controller('ContactController', ['$scope', '$routeParams', '$anchorScroll','Project', 'DataSource', function($scope, $routeParams, $anchorScroll, Project, DataSource) {
        //$scope.project = Project.get({ id: $routeParams.id});

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



    }]);
