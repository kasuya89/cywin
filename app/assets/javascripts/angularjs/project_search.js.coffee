@app.controller 'ProjectSearchController', [ '$scope', '$http', '$window', ($scope, $http, $window)->

  $scope.search = ()->
    $window.location.href = '/explore/search/?q=' + $scope.q + '&head_id=' + $scope.head_id

  $scope.select_head = (id)->
    $scope.head_id = id
    $scope.search()

  $scope.is_selected_head = (id)->
    $scope.head_id == id
]
