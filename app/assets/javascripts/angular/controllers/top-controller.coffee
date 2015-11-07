angular.module('concertIn').controller 'TopController', ['$scope', 'ConcertList', ($scope, ConcertList) ->

  $scope.init = ->
    ConcertList.query (data) ->
      $scope.concerts = data.concerts

]
