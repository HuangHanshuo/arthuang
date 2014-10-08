@Arthur.module 'NavsApp.Show',(Show, App, Backbone, Marionette, $, _)->

  class Show.NavBar extends Marionette.LayoutView
    template: 'navs/show/nav_bar'

    events:
      "click li" : "addSelected"

    addSelected: (e) ->
      @.$("li").removeClass "active"
      $(e.target).parent().addClass "active"