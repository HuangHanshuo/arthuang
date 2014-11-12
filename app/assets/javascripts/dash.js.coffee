$ ->
  canvas = $('canvas')
  console.log canvas
  context = canvas.getContext('2d')
  context.font = '40pt Calibri'
  context.fillStyle = 'blue'
  context.fillText('Hello World!', 150, 100)

#  if $("#aboutconsole").is(":hidden")
#    $("#aboutconsole").show "slow", ->
#      $(".toolbar").slideDown ->
#        $(".editarea").fadeIn()
#        $("input").focus()
#
#  $(".input").on "keypress", "input", (event) ->
#    if event.which == 13
#      input_val = $.trim $("input").val()
#      $(".input").before "<pre>> " + input_val + "</pre>"
#
#      switch input_val
#        when "help"
#          $(".input").before "<pre>" + "Type: \t\"about\" to introduce Arthur\n\t\"ls\" to list out Arthur's skills\n\t\"clear\" to clear the terminal screen" + "</pre>"
#        when "clear"
#          $("pre").not(".input").remove()
#        when "about"
#          $(".input").before "<pre>" + "Arthur Huang, graduated from 2011, software engineer, focus on web development." + "</pre>"
#        when "ls"
#          $(".input").before "<pre>" + "Java\tRuby\tRoR\tjQuery\tBackbone\tMarionette" + "</pre>"
#        else
#          $(".input").before "<pre>" + "Type \"help\" for help." + "</pre>"
#
#      $("input").val("")
#    $('.editarea').scrollTop(100000000)