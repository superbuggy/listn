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
  "$state",
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

function ListnsControllerFunc(ListnsFactory, $state) {
  var vm = this;
  vm.newListn = new ListnsFactory();
  vm.showNotes = [];
  vm.editNotes = [];
  vm.showConfirm = [];
  vm.listns = ListnsFactory.query(function(res){
    res.forEach(function(prom, listn){
      vm.showNotes.push(false)
      vm.showConfirm.push(false)
      vm.editNotes.push(false)
    })
  });

  vm.addListn = function() {
    vm.newListn.$save().then(function(res){
      console.log(res);
      $state.go("listnsIndex", {}, {reload: true});
    })
  }

  vm.removeListn = function(id) {
    ListnsFactory.get({id: id}).$delete({id: id}).then(function(res){
      console.log(res);
      $state.go("listnsIndex", {}, {reload: true});
    });
  }


  vm.editListn = function(order, id) {
    vm.editNotes[order] = !vm.editNotes[order]
    vm.editingListn = ListnsFactory.get({id: id})
    console.log("edit");
  }

  vm.updateListn = function(id){
    vm.editingListn.$update({id: id}).then(function(res){
      $state.go("listnsIndex", {}, {reload: true});
    });
  }
}

function ListnsFactoryFunc($resource){
  return $resource("https://listn.herokuapp.com/listns/:id.json", {}, {
    update: { method: "PUT" }
  });
}
