$(document).ready ->
#  ===================================================== init validation forms
  $.validate()

  $('.select-enter-door-wrapper select').change (e) ->
    e.preventDefault()
    door = $('select#model_d').val()
    color = $('select#color_d').val()
    valuesToSubmit = {door: door, color: color}
    src = '/get_image?doors='+door+'&door_color='+color
    $('.image-enter-door img').attr('src', src )

  door_louver_price = 0
  $('a.order-louver-doors').click (e) ->
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
        door_louver_price = data
        $('input#d_v_suma').val(door_louver_price)


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
        door_louver_price = data
        if $('input#d_v_count') == null
          $('input#d_v_suma').val(door_louver_price)
        else
          $('input#d_v_suma').val(door_louver_price*parseInt($('input#d_v_count').val()))


  $('input#d_v_count').keyup (e) ->
    e.preventDefault()
    price_from = $('input#d_v_suma')
    $('input#d_v_suma').val(parseInt($('input#d_v_count').val())*parseInt(door_louver_price))

#    order louver doors
  $('button#d_v_submit').click (e) ->
    e.preventDefault()
    valueToSubmit = {louver_doors:{ width:$('select#d_v_width').val(), height:$('select#d_v_height').val(), count:$('input#d_v_count').val(), price:$('input#d_v_suma').val(), name:$('input#d_v_name').val(), phone:$('input#d_v_phone').val(), email:$('input#d_v_email').val(), comment:$('textarea#d_v_message').val(), time_from:$('select#d_v_time_from').val(), time_to:$('select#d_v_time_to').val()}}
    $.ajax
      url: '/order_louver_doors'
      type: 'POST'
      data: valueToSubmit
      success: () ->
        alert('success')

# call order
  $(".status-message").addClass(" dn")
  $(".loading_status").addClass(" dn")


  $("form#call_order").submit ->
    $(".loading_status").removeClass("dn")
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
        $(".loading_status").addClass(" dn")
        $("form#call_order").addClass(" dn")

        $(".fancybox-inner").height('height', '250px')
        $(".fancybox-wrap").css({"width":"600px","left":"30%"})
    #act on result.
    false # prevents normal behaviour

# order enter doors
  $('button#d_submit').click (e) ->
    e.preventDefault()
    valueToSubmit = {enter_doors:{ door:$('select#model_d').val(), color:$('select#color_d').val(), open_door:$('input:checkbox[name=open_door]:checked').val(), count:$('input#count_e_door').val(),furnitura:$('input:checkbox[name=furnitura]:checked').val(), name:$('input#d_v_name').val(), phone:$('input#d_v_phone').val(), email:$('input#d_v_email').val(), comment:$('textarea#d_v_message').val(), time_from:$('select#d_v_time_from').val(), time_to:$('select#d_v_time_to').val()}}
    $.ajax
      url: '/order_enter_door'
      type: 'POST'
      data: valueToSubmit
      success: () ->
        alert('success')

