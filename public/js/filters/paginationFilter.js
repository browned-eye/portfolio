//filter data to create sliced results for pagination.

angular.module("portfolio").filter('startFrom', function() {
    return function(input, start) {
        if (input) {
            start = +start;
            return input.slice(start);
        }
        return [];
    };
});
