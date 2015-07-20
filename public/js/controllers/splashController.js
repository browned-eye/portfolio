angular.module('portfolio')
    .controller('SplashController', ['$scope', '$timeout',
  function SplashController($scope, $timeout) {

    $scope.save = function() {

      $scope.message = 'Saving...';
      $scope.showMessage = true;

      // Simulate 2 seconds loading delay
      $timeout(function() {

        // Loadind done here - Show message for 3 more seconds.
        $timeout(function() {
          $scope.showMessage = false;
        }, 3000);

      }, 2000);
    };
  }
]);
