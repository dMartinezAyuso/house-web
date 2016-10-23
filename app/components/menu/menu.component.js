(function() {
    'use strict';

    angular.module('myApp.menuCompo')
        .component('MenuCompo', MenuCompo);

    function MenuCompo() {
        var component = {
            templateUrl : 'menu.component.html',
            controller : MenuCompoController,
            controllerAs : 'vm'
        };

        return component;

        function MenuCompoController() {
            var vm = this;
            vm.items = {
                home : {
                    name : 'Inicio',
                    route : '#!/home'
                },
                garden : {
                    name : 'Garden',
                    route : '#!/garden'
                },
                interior : {
                    name : 'Interior',
                    route : '#!/interior'
                },
                photos : {
                    name : 'Fotos',
                    route : '#!/photos'
                },
                financings : {
                    name : 'Cuentas',
                    route : '#!/financings'
                }
            }

            function openMenu() {
                var x = document.getElementById("menuTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
        }
    }

})();
