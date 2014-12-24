'use strict'

var Controller = {
  init: function() {
    this.model = Model;
    this.view = View;
  },
  run: function() {
    this.view.renderResult(this.model.calculateResults());
    // this.view.renderPlayAgainButton()
  }
}

function initialize() {
  document.getElementById('form').addEventListener("submit", function(event){
    event.preventDefault();
    Controller.init();
    Controller.run();
  }, false)
}

window.addEventListener("load", initialize, false);