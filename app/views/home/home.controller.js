(function() {
    'use strict';

    angular.module('myApp.home')
        .controller('HomeCtrl', HomeCtrl);

    function HomeCtrl(calendarConfig) {

        var vm = this;

        vm.addEvent = addEvent;
        vm.eventClicked = eventClicked;
        vm.eventEdited = eventEdited;
        vm.eventDeleted = eventDeleted;
        vm.eventTimesChanged = eventTimesChanged;
        vm.toggle = toggle;
        vm.timespanClicked = timespanClicked;

        vm.garden = "Jardineria";
        vm.calendarView = 'month';
        vm.viewDate = new Date();
        var actions = [
            {
                label: '<i class=\'glyphicon glyphicon-pencil\'></i>',
                onClick: function(args) {
                    alert.show('Edited', args.calendarEvent);
                }
            },
            {
                label: '<i class=\'glyphicon glyphicon-remove\'></i>',
                onClick: function(args) {
                    alert.show('Deleted', args.calendarEvent);
                }
            }
        ];
        vm.events = [
            {
                title: 'An event',
                color: calendarConfig.colorTypes.warning,
                startsAt: moment().startOf('week').subtract(2, 'days').add(8, 'hours').toDate(),
                endsAt: moment().startOf('week').add(1, 'week').add(9, 'hours').toDate(),
                draggable: true,
                resizable: true,
                actions: actions
            },
            {
                title: '<i class="glyphicon glyphicon-asterisk"></i> <span class="text-primary">Another event</span>, with a <i>html</i> title',
                color: calendarConfig.colorTypes.info,
                startsAt: moment().subtract(1, 'day').toDate(),
                endsAt: moment().add(5, 'days').toDate(),
                draggable: true,
                resizable: true,
                actions: actions
            },
            {
                title: 'This is a really long event title that occurs on every year',
                color: calendarConfig.colorTypes.important,
                startsAt: moment().startOf('day').add(7, 'hours').toDate(),
                endsAt: moment().startOf('day').add(19, 'hours').toDate(),
                recursOn: 'year',
                draggable: true,
                resizable: true,
                actions: actions
            }
        ];

        vm.cellIsOpen = true;

        function addEvent() {
            vm.events.push({
                title: 'New event',
                startsAt: moment().startOf('day').toDate(),
                endsAt: moment().endOf('day').toDate(),
                color: calendarConfig.colorTypes.important,
                draggable: true,
                resizable: true
            });
        };

        function eventClicked(event) {
            alert.show('Clicked', event);
        };

        function eventEdited(event) {
            alert.show('Edited', event);
        };

        function eventDeleted(event) {
            alert.show('Deleted', event);
        };

        function eventTimesChanged(event) {
            alert.show('Dropped or resized', event);
        };

        function toggle($event, field, event) {
            $event.preventDefault();
            $event.stopPropagation();
            event[field] = !event[field];
        };

        function timespanClicked(date, cell) {
            if (vm.calendarView === 'month') {
                if ((vm.cellIsOpen && moment(date).startOf('day').isSame(moment(vm.viewDate).startOf('day'))) || cell.events.length === 0 || !cell.inMonth) {
                    vm.cellIsOpen = false;
                } else {
                    vm.cellIsOpen = true;
                    vm.viewDate = date;
                }
            } else if (vm.calendarView === 'year') {
                if ((vm.cellIsOpen && moment(date).startOf('month').isSame(moment(vm.viewDate).startOf('month'))) || cell.events.length === 0) {
                    vm.cellIsOpen = false;
                } else {
                    vm.cellIsOpen = true;
                    vm.viewDate = date;
                }
            }
        };
    }
})();
