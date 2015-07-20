angular.module("portfolio").directive('ptoCategorySelector', function(ProjectCategory) {
            return {
                replace: true,
                restrict: "E",
                //require controller that somewhat related to this directive;
                //looks for the directive that on this directive.
                //^ would look for parent,
                //? makes it require ngmodel optional.
                //Brings in the ngmodel controller as a 4th arguement
                //API for ngmodel that makes 2 way interaction happen.
                //if ngmodel changes, want to change active category that its showing.
                require: "?ngModel",
                templateUrl: "views/directives/ptoCategorySelector.html",
                link: function(scope, element, attrs, ngModelCtrl) {
                    var activeCategory = {};
                    //query the project category types
                    scope.categories = ProjectCategory.query();
                    ///console.log( scope.categories);
                    //set the category button to active; will pass in the
                    //clicked category from the view
                    scope.isActive = function(category) {
                        return activeCategory && activeCategory.tag === category.tag;
                    }

                    //toggle the categories to make them active
                    //if the category is already set, unset it, otherwise
                    //set the active category to the category selected
                    scope.toggleCategory = function(category) {
                            if (category === activeCategory) {
                                activeCategory = {};
                            } else {
                                activeCategory = category;
                            }
                              //sets the view value for the category
                              ngModelCtrl.$setViewValue(activeCategory);
                        }
                        //Method called render which is a function(like a watcher,
                        //but nothing gets passed in as a arg).
                        ////if ngmodel ranges, want to change what gets rendered in the view.

                    ngModelCtrl.$render = function() {
                        //console.log(ngModelCtrl.$viewValue);
                          activeCategory = ngModelCtrl.$viewValue;
                          // console.log(activeCategory);
                       }

                    }
                };
            });
