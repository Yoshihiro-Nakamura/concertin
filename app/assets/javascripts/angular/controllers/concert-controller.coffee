angular.module('concertIn').controller 'ConcertController', ['$scope', 'ConcertList', '$routeParams', ($scope, ConcertList, $routeParams) ->

  $scope.init = ->
    $scope.loading = true
    console.log $routeParams.concert_id
    ConcertList.get {id: $routeParams.concert_id}, (data) ->
      $scope.concert = data.concert
      console.log data

]
