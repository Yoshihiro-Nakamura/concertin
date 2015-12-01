angular.module('concertIn').controller 'OrchestraController', ['$scope', 'Orchestra','$routeParams', ($scope, Orchestra, $routeParams) ->

  $scope.init = =>
    $scope.loading = true
    Orchestra.get {id: $routeParams.orchestra_id}, (data) ->
      $scope.orchestra_name = data.orchestra_name
      $scope.concerts = data.concerts
  $(".sub_nav li").removeClass("current_tab")

]
