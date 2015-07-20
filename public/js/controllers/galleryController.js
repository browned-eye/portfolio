//using the # in ahref makes the browser wait until the view is rendered
angular.module('portfolio')
  .controller( 'GalleryController', ['$scope', 'DataSource', function ($scope, DataSource) {
    var IMAGE_WIDTH = 405;
    $scope.IMAGE_LOCATION = "http://rabidgadfly.com/assets/angular/gallery1/";

    // Retrieve and set data
    DataSource.get("images.json",function(data) {
        $scope.galleryData = data;
        $scope.selected = data[0];
    });

    // Scroll to appropriate position based on image index and width
    $scope.scrollTo = function(image,ind) {
        $scope.listposition = {left:(IMAGE_WIDTH * ind * -1) + "px"};
        $scope.selected = image;
    };
}]);
