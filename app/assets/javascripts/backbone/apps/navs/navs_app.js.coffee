@Arthur.module "NavsApp",(NavsApp, App, Backbone, Marionette, $ ,_) ->

  NavsApp.on 'start', ->
    new NavsApp.Show.Controller()