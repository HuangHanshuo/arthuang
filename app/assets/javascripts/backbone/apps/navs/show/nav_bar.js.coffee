@Arthur.module 'NavsApp.Show',(Show, App, Backbone, Marionette, $, _)->

  class Show.NavBar extends Marionette.LayoutView
    template: 'navs/show/nav_bar'

#    initialize:
#      App.vent.on("navi:to")

    events:
      "click li" : "addSelected"

    addSelected: (e) ->
      @.$("li").removeClass "active"
      $(e.target).parent().addClass "active"