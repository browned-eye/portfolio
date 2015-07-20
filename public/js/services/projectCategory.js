
// get project data from the server; will make a factory (service reciepe)
// register a service
//want to use the $resource function, just pass it an id

angular.module('portfolio').factory('ProjectCategory', function($resource){
  return $resource('/projectCategories/:id', {id: "@id"});
});
