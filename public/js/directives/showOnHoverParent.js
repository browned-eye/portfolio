//http: //jsfiddle.net/BinaryMuse/aSjwk/2/

angular.module("portfolio").directive('showonhoverparent', function() {
    return {
         link : function(scope, element, attrs) {
            element.parent().bind('mouseenter', function() {
                element.show();
            });
            element.parent().bind('mouseleave', function() {
                 element.hide();
            });
       }
    };
});
