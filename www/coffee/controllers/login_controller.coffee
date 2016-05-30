app.controller('LoginController', ($scope, $state, $ionicPopup, AuthService) ->
	$scope.data = {}

	$scope.login = (data) ->
     AuthService.login(data).then ((authenticated) ->
      $state.go('app.main', {})
      $scope.setCurrentUsername(data.username)
      return
    )
)
