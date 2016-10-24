(function() {
    'use strict';

    angular.module('myApp.home')
        .factory('homeFactory', homeFactory)

    function homeFactory() {
        var factory = {
            getThumbnailsItems : getThumbnailsItems
        };

        return factory;

        function getThumbnailsItems() {
            var thumbnailsItems = {
                garden : {
                    name : 'Jardinería',
                    description : 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.',
                    pathIcon : '../images/jardineria.jpg',
                    alt : 'jardineria',
                    pathLink : '#'
                },
                interior : {
                    name : 'Interior',
                    description : 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.',
                    pathIcon : '../images/casa.jpg',
                    alt : 'interior',
                    pathLink : '#'
                },
                photos : {
                    name : 'Fotos',
                    description : 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.',
                    pathIcon : '../images/photo.png',
                    alt : 'fotos',
                    pathLink : '#'
                },
                financings : {
                    name : 'Cuentas',
                    description : 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.',
                    pathIcon : '../images/euro.png',
                    alt : 'cuentas',
                    pathLink : '#'
                }
            };
            return thumbnailsItems;
        }
    }
})();
