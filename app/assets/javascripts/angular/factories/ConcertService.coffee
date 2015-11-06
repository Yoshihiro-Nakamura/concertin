angular.module('concertIn').factory 'ConcertList',[ '$resource', ($resource) ->
  $resource "/api/concerts/:id", {id: '@id'}, {'query': {method: 'GET', isArray: false}}
]
