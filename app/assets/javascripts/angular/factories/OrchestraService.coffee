angular.module('concertIn').factory 'Orchestra',[ '$resource', ($resource) ->
  $resource "/api/orchestras/:id", {id: '@id'}, {'query': {method: 'GET',　chache: true, isArray: false}}
]
