//http: //jsfiddle.net/BinaryMuse/aSjwk/2/

angular.module("portfolio").directive('backImg', function() {
    return function(scope, element, attrs) {
        attrs.$observe('backImg', function(value) {
            element.css({
                'background-image': 'url(' + value + ')' ,
                'background-size': 'contain',
                'background-repeat': 'no-repeat',
                'background-position':'center'
            });
        });
    };
});
