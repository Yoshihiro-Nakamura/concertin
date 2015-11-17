angular.module('concertIn').controller 'ConcertController', ['$scope', 'ConcertList', '$routeParams', ($scope, ConcertList, $routeParams) ->

  $scope.init = ->
    $scope.loading = true
    console.log $routeParams.concert_id
    ConcertList.get {id: $routeParams.concert_id}, (data) ->
      $scope.concert = data.concert
      if data.concert.conductor == "指揮者無し"
        $(".conductor").addClass('hidden')

  $(".sub_nav li").removeClass("current_tab")

]
