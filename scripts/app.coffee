MyCtrl = ($scope, $firebase) ->
    peopleRef = new Firebase "https://intense-fire-7647.firebaseio.com/people"
    $scope.people = $firebase peopleRef

    $scope.addPerson = ->
        $scope.people.$add name: $scope.newName, age: $scope.newAge
        $scope.newPerson = ''

myApp = angular.module 'kahuna', ['firebase']

myApp.controller 'MyCtrl', [
    '$scope'
    '$firebase'
    MyCtrl
]
