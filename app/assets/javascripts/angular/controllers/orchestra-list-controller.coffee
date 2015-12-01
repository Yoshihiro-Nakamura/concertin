angular.module('concertIn').controller 'OrchestraListController', ['$scope', ($scope) ->
  $(".sub_nav li").removeClass("current_tab")
  $("div.sub_navbar > ul > li:nth-child(1)").addClass("current_tab")
]
