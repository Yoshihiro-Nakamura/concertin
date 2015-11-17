angular.module('concertIn').factory 'location', [
  '$rootScope'
  '$route'
  '$location'
  ($rootScope, $route, $location) ->

    $location.skipReload = ->
      lastRoute = $route.current
      deregister = $rootScope.$on('$locationChangeSuccess', (e, absUrl, oldUrl) ->
        console.log 'location.skipReload', 'absUrl:', absUrl, 'oldUrl:', oldUrl
        $route.current = lastRoute
        deregister()
        return
      )
      $location

    $location
]
