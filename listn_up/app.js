angular
  .module("listn", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunc
  ])
  .controller("ListnsController", [
    "ListnsFactory",
    ListnsControllerFunc
  ])
  .factory("ListnsFactory", [
    "$resource",
    ListnsFactoryFunc
  ])

function RouterFunc($stateProvider) {
  $stateProvider
    .state("listnsIndex", {
      url: "/",
      templateUrl: "js-views/listns-index.html",
      controller: "ListnsController",
      controllerAs: "listnsVm"
    })
}

function ListnsControllerFunc(ListnsFactory) {
  this.listns = ListnsFactory.query();
}

function ListnsFactoryFunc($resource){
  return $resource("http://localhost:3000/listns/:id.json", {}, {
      update: { method: "PUT" }
    });
}
