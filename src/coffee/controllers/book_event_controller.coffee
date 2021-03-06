class BookEventController
  constructor: ($scope, $state, service, BookingService) ->
    [@scope, @state, @service, @BookingService] = arguments

    @bindListeners()

    @scope.vm = this

    this

  bindListeners: ->
    @scope.$on('bookEvent', @bookEvent)

  bookEvent: (_, data) =>
    @BookingService.book(data.event).then =>
      @scope.$broadcast('reloadEvents')
  back: ->
    @state.go('app.main')

app.controller('BookEventController', BookEventController)
