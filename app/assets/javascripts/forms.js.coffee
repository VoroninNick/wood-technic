$(document).ready ->
  # =====================================================  send call_order
  $(".status-message").addClass(" dn")
  $("#call_order_form").submit ->
    valuesToSubmit = $(this).serialize()
    #sumbits it to the given url of the form
    # you want a difference between normal and ajax-calls, and json is standard
    $.ajax
      url: $(this).attr("action")
      type: "POST"
      data: valuesToSubmit
#      dataType: "JSON"
      success: () ->
        $(".status-message").removeClass(" dn")
        $("#call_order_form").addClass(" dn")
        $(".fancybox-inner").height('height', '250px')
        $(".fancybox-wrap").css({"width":"600px","left":"30%"})
    #act on result.
    false # prevents normal behaviour


#  ===================================================== init validation forms
#  $.validate()

  $('.select-enter-door-wrapper select').change (e) ->
    e.preventDefault()
    door = $('select#model_d').val()
    color = $('select#color_d').val()
    valuesToSubmit = {door: door, color: color}
    src = '/get_image?doors='+door+'&door_color='+color
    $('.image-enter-door img').attr('src', src )



  $('.lf_header select').change (e) ->
    e.preventDefault()
    selected_width = $('select#d_v_width').val()
    selected_height = $('select#d_v_height').val()

    rez_request_string = selected_width+'/'+selected_height

    valuesToSend = {title: rez_request_string}

    $.ajax
      url: '/get_price'
      type: "GET"
      data: valuesToSend
      dataType: "text"
    success:(data) ->
      alert('rrr')



