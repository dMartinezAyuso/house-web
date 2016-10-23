(function() {
    'use strict';

    angular.module('myApp.home')

    .config(['$routeProvider', function($routeProvider) {
        $routeProvider.when('/home', {
            templateUrl: 'views/home/home.html',
            controller: 'HomeCtrl',
            controllerAs: 'vm'
        });
    }])
})();
