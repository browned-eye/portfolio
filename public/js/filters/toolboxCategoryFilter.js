angular.module("portfolio").filter('toolFilter', function() {
    return function(collection, tool) {
        function isInArray(value, array) {
            return array.indexOf(value) > -1;
        }

        var newCollection = [];
        var all = false;
        if (tool && tool.name) {
            if (tool.name == 'all tools') {
                all = true;
            } else {
                var re1 = new RegExp(tool.name);
            }
            //see if the active category is equal to the
            for (var i = 0, l = collection.length; i < l; i++) {
                if (all) {
                    newCollection.push(collection[i]);
                } else {
                    var projectTools = collection[i].toolbox_ids;
                    var seenprojects = [];
                    if (projectTools && projectTools.length >= 1) {
                        for (z = 0; z < projectTools.length; z++) {
                            if (re1.test(projectTools[z])) {
                                if (!(isInArray(collection[i].title_short, seenprojects))) {
                                    newCollection.push(collection[i]);
                                    seenprojects.push(collection[i].title_short)
                                }
                            }
                        }
                    }
                }
            }
            //console.log(newCollection);
            return newCollection;
        } else {
            return collection;
        }
    }
});
