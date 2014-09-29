$ ->
  if $("#aboutconsole").is(":hidden")
    $("#aboutconsole").show "slow", ->
      $(".toolbar").slideDown ->
        $(".editarea").fadeIn()
        $("input").focus()

#  command_arr = []
#  index = 0

  $(".input").on "keypress", "input", (event) ->
    console.log event.which
    if event.which == 13
      input_val = $.trim $("input").val()
#      command_arr.push(input_val)
#      index++
      empty_line = "<pre>></pre>"
      if input_val == "help"
        $(".input").before "<pre>> " + input_val + "</pre>"
        $(".input").before "<pre>" + "Type: \t\"about\" to introduce Arthur\n\t\"ls\" to list out Arthur's skills\n\t\"clear\" to clear the terminal screen" + "</pre>"
      else if input_val == "clear"
        $("pre").not(".input").remove()
      else if input_val == "about" || input_val == "ls"
        $.ajax
          url: "/req"
          data: {req: input_val}
          success: (data) ->
            $(".input").before "<pre>> " + input_val + "</pre>"
            $(".input").before "<pre>" + data + "</pre>"
            $('.editarea').scrollTop(100000000)
      else
        $(".input").before "<pre>> " + input_val + "</pre>"
        $(".input").before "<pre>" + "Type \"help\" for help." + "</pre>"
      $("input").val("")
#    else if event.which == 38
#      console.log index
#      console.log command_arr[index - 1]
    $('.editarea').scrollTop(100000000)