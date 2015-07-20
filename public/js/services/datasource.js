
// get project data from the server; will make a factory (service reciepe)
// register a service
//want to use the $resource function, just pass it an id
angular.module('portfolio').factory('DataSource', function($http){
       return {
           get: function(fileName,callback){
                $http.get(fileName).
                success(function(data, status) {
                    callback(data);
                });
           }
       };
});
