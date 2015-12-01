angular.module('concertIn').controller 'TopController', ['$scope', 'ConcertList', ($scope, ConcertList) ->

  $scope.init = ->
    ConcertList.query (data) ->
      $scope.concerts = data.concerts
  $(".sub_nav li").removeClass("current_tab")
  $("div.sub_navbar > ul > li:nth-child(2)").addClass("current_tab")
]
