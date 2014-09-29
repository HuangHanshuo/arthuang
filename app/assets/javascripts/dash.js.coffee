$ ->
#Key	      Mac	 Windows	Linux
#rbKeyUp	  126	 26	      103
#rbKeyDown	125	 28	      108
  if $("#aboutconsole").is(":hidden")
    $("#aboutconsole").show "slow", ->
      $(".toolbar").show "scale", ->
        $(".editarea").fadeIn()
        $("input").focus()

  command_arr = []
  index = 0
#  $(".editarea").animate { scrollTop: $(".editarea").height() }, "slow"
  $(".input").on "keypress", "input", (event) ->
    if event.which == 13
      input_val = $("input").val()
      command_arr.push(input_val)
      index++
      empty_line = "<pre>></pre>"
      if input_val == ""
        $(".input").before(empty_line)
#        $('.editarea').scrollTop(100000000)
      else if input_val == "clear"
        $("pre").not(".input").remove()
        $("input").val("")
      else
        console.log event.which
        $.ajax
          url: "/req"
          data: {req: input_val}
          success: (data) ->
            $(".input").before "<pre>> " + input_val + "</pre>"
            $(".input").before "<pre>" + data + "</pre>"
            $("input").val("")
            $('.editarea').scrollTop(100000000)
    else if event.which == 126
      console.log index
      console.log command_arr[index - 1]

    $('.editarea').scrollTop(100000000)