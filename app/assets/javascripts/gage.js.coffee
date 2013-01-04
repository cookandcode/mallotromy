# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


GageApp = angular.module("Gage_app",[])

GageApp.factory('gageService',['$window','$http',(win, $http)-> 
        GageService = (win)->
            gages = []
            
            @addGage = (gage)-> 
                gages.push(gage)
            
            @getGages = ()->
                $http.get('gages').success((data, status)->
                    for value in data
                        gages.push(value)
                )
                gages

            @getGagesFilter = (filter)->
                $http.get('gages').success((data, status)->
                    for value in data
                        gages.push(value)
                )
                gages
            
            @editRole = (role)->
                
                $http(
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
                    method: 'POST'
                    url: 'http://localhost:8888/caisse/roles/edit'
                    data: $.param({
                        'role':
                            'id':role.id
                            'nom': role.nom
                        'droit':role.droit  
                    })
                    
                ).success((data)->
                        
                )

            true
    
        return new GageService(win)
])



GageApp.controller('GagesCtrl', ['$scope','gageService', ($scope,gageService)->
    loadGage = ()->
        $scope.gages = gageService.getGages()

    loadGage()

])
