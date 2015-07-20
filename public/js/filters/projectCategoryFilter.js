angular.module("portfolio").filter('categoryFilter', function() {
    return function(collection, category) {

        function isInArray(value, array) {
            return array.indexOf(value) > -1;
        }
        var all = false;
        var newCollection = [];
        if (category) {
            if (category.tag) {
                if (category.tag == 'all') {
                    all = true;
                } else {
                    var regcat = new RegExp(category.tag);
                }
            } else {
                var regcat = new RegExp(category);
            }
            //see if the active category is equal to the
            for (var i = 0, l = collection.length; i < l; i++) {
                if (all) {
                    newCollection.push(collection[i]);
                } else {
                    //see if location $location.search()
                    var tags = collection[i].tags;
                    var seenprojects = [];
                    if (tags && tags.length >= 1) {
                        for (z = 0; z < tags.length; z++) {
                            if (regcat.test(tags[z])) {
                                if (!(isInArray(collection[i].title_short, seenprojects))) {
                                    seenprojects.push(collection[i].title_short)
                                    newCollection.push(collection[i]);
                                }
                            }
                        }
                    }
                }
            }
            // console.log(newCollection);
            return newCollection;
        } else {
            return collection;
        }
    }
});
