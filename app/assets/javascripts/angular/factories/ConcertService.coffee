angular.module('concertIn').factory 'ConcertList',[ '$resource', ($resource) ->
  $resource "/api/concerts/:id", {id: '@id'}, {'query': {method: 'GET',　chache: true, isArray: false}}
]
