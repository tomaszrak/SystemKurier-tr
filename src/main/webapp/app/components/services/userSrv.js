
angular.module('stApp.userSrv', [])
    .service('UserSrv', function($http){
        return {
            users : function(){
                return $http.get('../rest/users/all');
            },
            user : function(user){
                return $http.post('../rest/users/user', user);
            }
        }
    });