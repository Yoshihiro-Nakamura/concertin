angular.module('concertIn').controller 'TopController', ['$scope', 'ConcertList', ($scope, ConcertList) ->

  $scope.init = ->
    ConcertList.query (data) ->
      $scope.concerts = data.concerts
  $(".sub_nav li").removeClass("current_tab")
  $("body > div.navbar.navbar-default.nav_box > div > div.sub_navbar > ul > li:nth-child(1)").addClass("current_tab")
]
