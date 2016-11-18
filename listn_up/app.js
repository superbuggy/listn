angular
  .module("listn", [
    "ngResource"
  ])
  .controller("ListnController", [
    "ListnFactory", 
    ListnControllerFunc
  ])
  .factory("ListnFactory", [
    "$resource", 
    ListnFactoryFunc
  ])

function ListnControllerFunc(ListnFactory) {
  this.listns = ListnFactory.query();  
}


function ListnFactoryFunc($resource){
  return $resource("http://localhost:3000/listns/:id.json", {}, {
      update: { method: "PUT" }
    });
}
