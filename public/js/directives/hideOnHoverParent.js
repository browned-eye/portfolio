//http: //jsfiddle.net/BinaryMuse/aSjwk/2/

angular.module("portfolio").directive('hideonhoverparent', function() {
    return {
         link : function(scope, element, attrs) {
            element.parent().bind('mouseenter', function() {
                element.hide();
            });
            element.parent().bind('mouseleave', function() {
                 element.show();
            });
       }
    };
});
