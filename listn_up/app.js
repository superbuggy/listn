angular
  .module("listn", [])
  .controller("ListnController", [ListnControllerFunc] )
  .factory("ListnFactory", ListenFactoryFunc)

function ListnControllerFunc() {
  this.listns = [
    { band: "Art Bears", album: "s/t" }
  ]
}

function ListenFactoryFunc(){
  return [];
}
