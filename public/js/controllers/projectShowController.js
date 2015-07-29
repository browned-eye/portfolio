//http://rabidgadfly.com/page/2/

angular.module('portfolio')
    .controller('ProjectShowController', ['$scope', '$routeParams', '$anchorScroll','Project', 'DataSource', function($scope, $routeParams, $anchorScroll, Project, DataSource) {
        //$scope.project = Project.get({ id: $routeParams.id});


        $scope.project = Project.get({
            id: $routeParams.id
        }, function(data) {
            $scope.title_short = data.title_short;
            $scope.IMAGE_LOCATION = "images/projectpics/" + data.title_short + "/";
            // Retrieve and set data
            DataSource.get("images/projectpics/"+$scope.title_short +"/" + $scope.title_short + ".json", function(data) {
                $scope.galleryData = data;
                $scope.selected = data[0];
                $scope.glen = data.length;
                $scope.records = [];
                for (var i = 0; i <= $scope.glen; i++) {
                    $scope.records.push({
                        id: i,
                        navIndex: i,
                        name: 'record ' + i
                    });
                }
            });

        });
        $scope.vidPlayer = "galleryPlayer";
        var IMAGE_WIDTH = 650;

        // Scroll to appropriate position based on image index and width
        $scope.scrollTo = function(image, ind) {
            $scope.listposition = {
                left: (IMAGE_WIDTH * ind * -1) + "px"
            };
            $scope.selected = image;
            //update the highlighted item in the image scroller ul
            $scope.focusIndex = ind;
            console.log(IMAGE_WIDTH);
            console.log(IMAGE_WIDTH * ind * -1);
        };


        //how do I pass this in $scope.galleryData.length to this loop?!

        //http://plnkr.co/edit/rwUDTtkQkaQ0dkIFflcy?p=preview
        $scope.focusIndex = 0;


        $scope.keys = [];
        $scope.keys.push({
            code: 37,
            action: function() {
                var IMAGE_WIDTH = 650;
                if ($scope.focusIndex > 0) {
                    $scope.focusIndex--;
                    $scope.listposition = {
                        left: (IMAGE_WIDTH * $scope.focusIndex * -1) + "px"
                    };
                    $scope.selected = $scope.galleryData[$scope.focusIndex];
                }
            }
        });

        $scope.keys.push({
            code: 39,
            action: function() {
                // console.log("right key pressed");
                // console.log($scope.focusIndex);

                var IMAGE_WIDTH = 650;
                // console.log($scope.focusIndex);
                // if ($scope.focusIndex == -1) {
                //   console.log("scope index -1");
                //     $scope.focusIndex = 1;
                // }
                // console.log($scope.focusIndex);
                if ($scope.focusIndex < ($scope.galleryData.length - 1)) {
                    $scope.focusIndex++;
                    // if ($scope.focusIndex == 0) {
                    //     console.log("in here");

                    //     // $scope.focusIndex == $scope.focusIndex + 1;
                    // }
                    $scope.listposition = {
                        left: (IMAGE_WIDTH * $scope.focusIndex * -1) + "px"
                    };
                    $scope.selected = $scope.galleryData[$scope.focusIndex];
                    // $scope.focusIndex++;
                }
            }
        });

        $scope.$on('keydown', function(msg, obj) {
            var code = obj.code;
            $scope.keys.forEach(function(o) {
                if (o.code !== code) {
                    return;
                }
                o.action();
                $scope.$apply();
            });
        });




    }]);
