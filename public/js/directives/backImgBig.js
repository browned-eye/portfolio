//http: //jsfiddle.net/BinaryMuse/aSjwk/2/

angular.module("portfolio").directive('backImgBig', function() {
    return function(scope, element, attrs) {
        attrs.$observe('backImgBig', function(value) {
            element.css({
                'background-image': 'url(' + value + ')' ,
                'background-size': 'cover',
                'background-repeat': 'no-repeat',
                'background-position':'center',
                'background-size': '100% 100%'
            });
        });
    };
});
