@Arthur.module 'NavsApp.Show',(Show, App, Backbone, Marionette, $, _) ->

  class Show.Controller extends Marionette.Controller

    initialize: ->
      bar = new Show.NavBar()
      App.navRegion.show bar
