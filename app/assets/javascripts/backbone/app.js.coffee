@Arthur = do(Backbone, Marionette) ->

  App = new Marionette.Application()

  App.rootRouter = '/'

  App.on 'before:start', ->
    App.addRegions
#      mainRegion: '#dartContent'
#      dialogRegion: '#dialogContent'
#      flashRegion: "#flashContent"
#      dialogFlashRegion: "#dialogFormFlash"
#      headerRegion: "#dashboardHeader"

  #start
  App.on 'start', ->
    Backbone.history.start() if Backbone.history
  App

$ ->
  Arthur.start()