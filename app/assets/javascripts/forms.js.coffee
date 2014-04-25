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

#    int[][] prices = new int[][]
    alert('Ширина: '+selected_width+' Висота '+selected_height)

#  arr = class_first_tr_td
#  $.each ->
#    class_first_tr_td = $('.tab-content-inner table tr td:first-child').text()
#    class_first_tr_td.addClass(class_first_tr_td)
#
#    alert(class_first_tr_td)

