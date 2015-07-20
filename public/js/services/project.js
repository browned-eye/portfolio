
// get project data from the server; will make a factory (service reciepe)
// register a service
//want to use the $resource function, just pass it an id

angular.module('portfolio').factory('Project', function($resource){
  return $resource('/projects/:id', {id: "@id"});
});
