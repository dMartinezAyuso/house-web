"use strict";angular.module("myApp.home",["ngRoute"]).config(["$routeProvider",function(e){e.when("/home",{templateUrl:"views/home/home.html",controller:"HomeCtrl"})}]).controller("HomeCtrl",["$scope",function(e){e.garden="Jardineria"}]);"use strict";describe("myApp.home module",function(){beforeEach(module("myApp.home"));describe("home controller",function(){it("should ....",inject(function(e){var o=e("HomeCtrl");expect(o).toBeDefined()}))})});"use strict";angular.module("myApp.view2",["ngRoute"]).config(["$routeProvider",function(e){e.when("/view2",{templateUrl:"views/view2/view2.html",controller:"View2Ctrl"})}]).controller("View2Ctrl",[function(){}]);"use strict";describe("myApp.view2 module",function(){beforeEach(module("myApp.view2"));describe("view2 controller",function(){it("should ....",inject(function(e){var o=e("View2Ctrl");expect(o).toBeDefined()}))})});"use strict";angular.module("myApp",["ngRoute","ngTouch","ngAnimate","ui.bootstrap","myApp.home","myApp.view2"]).config(["$locationProvider","$routeProvider",function(e,o){e.hashPrefix("!");o.otherwise({redirectTo:"/home"})}]);