angular.module('concertIn').controller 'ConcertNewController', ['$scope', '$http', ($scope, $http) ->
  $scope.init = ->
    $scope.loading = true

    # アーティスト関連
    $scope.InstrumentSearch = do ->
      $http(
        method: 'GET'
        url: 'api/concerts/get_instrument').success((data, status, headers, config) ->
        $scope.instruments = data
        # $scope.selectedInstrument = data[0]
        console.log status
        console.log data[0]
        return
      ).error (data, status, headers, config) ->
        console.log status
        return
      return


    ArtistInitSize = 1
    $scope.artists = []
    i = 0
    while i < ArtistInitSize
      $scope.artists[i] = {}
      i++

    $scope.addArtists = (idx) ->
      $scope.artists[idx+1] = {}

    $scope.delArtists = (idx) ->
      $scope.artists.splice idx, 1


    # 曲関連
    SongsInitSize = 3
    $scope.songs = []
    i = 0
    while i < SongsInitSize
      $scope.songs[i] = {}
      i++

    $scope.addSongs = (idx) ->
      $scope.songs[idx+1] = {}

    $scope.delSongs = (idx) ->
      $scope.songs.splice idx, 1


    # コンタクト関連
    ContactInitSize = 1
    $scope.contacts = []
    i = 0
    while i < ContactInitSize
      $scope.contacts[i] = {}
      i++

    $scope.addContacts = (idx) ->
      $scope.contacts[idx+1] = {}

    $scope.delContacts = (idx) ->
      $scope.contacts.splice idx, 1

]
