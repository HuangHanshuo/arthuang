@Arthur = do(Backbone, Marionette) ->

  App = new Marionette.Application()

#  App.rootRouter = '/'

  App.on 'before:start', ->
    App.addRegions
      navRegion: '#navi_bar'

  #start
  App.on 'start', ->
    Backbone.history.start() if Backbone.history
  App

$ ->
  Arthur.start()