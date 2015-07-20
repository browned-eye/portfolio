// Declare app level module which depends on filters, and services
angular.module('portfolio', ['ngResource', 'ngRoute', 'ui.bootstrap', 'ui.date', 'ngAnimate', 'keyboard', 'angular-wurfl-image-tailor'])
  .config(['$routeProvider', function($routeProvider) {
        $routeProvider
            .when('/', {
                redirectTo: '/home'
            })
             .when('/home', {
                templateUrl: 'views/projects/index.html',
                controller: 'HomeController'
            })
            .when('/projects/:id', {
                templateUrl: 'views/projects/show.html',
                controller: 'ProjectShowController'
            })
            // .when('/projects', {
            //     templateUrl: 'views/projects/index.html',
            //     controller: 'ProjectIndexController'
            // })
            // .when('/contact', {
            //     templateUrl: 'views/single_page/contact.html'
            // })
            // .when('/experience', {
            //     templateUrl: 'views/experience/index.html',
            //     controller: 'ExperienceIndexController'
            // })
            // .when('/about', {
            //     templateUrl: 'views/single_page/about.html'
            // })
            // .when('/hire', {
            //     templateUrl: 'views/single_page/hire.html'
            // })

        .otherwise({
            redirectTo: '/'
        });

    }]);

//important! if you manually bootstap the angular app, don't use ng-app in the index.html page!
 setTimeout(
            function asyncBootstrap() {

                angular.bootstrap( document, [ "portfolio" ] );

            },
            (  6 * 1000 )
        );


