# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


#$(document).on 'ready page:load', ->
$(document).ready ->
# send call_order
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
#        alert("SUPER!!!!!!")
        $(".status-message").removeClass(" dn")
        $("#call_order_form").addClass(" dn")
        $(".fancybox-inner").height('height', '250px')
        $(".fancybox-wrap").css({"width":"600px","left":"30%"})
        $.fancybox.close
        #act on result.
    false # prevents normal behaviour


# for door
  $(".door-product-1 .palette_colors li a").click (event)->
    event.preventDefault()
    $(".palette-item").removeClass(' door_color_active')
    $(this).parent().addClass(' door_color_active')
    mainImage = $(this).attr("href") #Find Image Name
    $(".door-product-1 .door-image-wrapper img").attr src: mainImage

  $(".door-product-2 .palette_colors li a").click (event)->
    event.preventDefault()
    $(".palette-item").removeClass(' door_color_active')
    $(this).parent().addClass(' door_color_active')
    mainImage = $(this).attr("href") #Find Image Name
    $(".door-product-2 .door-image-wrapper img").attr src: mainImage

  $(".door-product-3 .palette_colors li a").click (event)->
    event.preventDefault()
    $(".palette-item").removeClass(' door_color_active')
    $(this).parent().addClass(' door_color_active')
    mainImage = $(this).attr("href") #Find Image Name
    $(".door-product-3 .door-image-wrapper img").attr src: mainImage

# tabs
  $("#tab-container").easytabs()
  $("#mdf-tab-container").easytabs()

# init fancybox
  $(".fancybox").fancybox()

#  main banner
  $(".bxslider").bxSlider
    mode: 'fade'
#    auto: true
    onSliderLoad: ->
      $('.link-to-item').addClass('animated slideInLeft')
      $('.ban-header').addClass('animated slideInDown')
      $('.ban-content').addClass('animated slideInLeft')
#product
  $(".product-door").bxSlider
    pagerCustom: "#product-button"
    mode: 'fade'
    controls: 'false'

#  main page carousel
  owl = $("#door-main-carousel")
  owl.owlCarousel
    items: 5 #10 items above 1000px browser width
    itemsDesktop: [ #5 items between 1000px and 901px
      1000
      5
    ]
    itemsDesktopSmall: [ # betweem 900px and 601px
      900
      3
    ]
    itemsTablet: [ #2 items between 600 and 0
      600
      2
    ]
    itemsMobile: false # itemsMobile disabled - inherit from itemsTablet option
    autoPlay : 5000


#checkbox group
  $("input:checkbox").click ->
    if $(this).is(":checked")
      group = "input:checkbox[name='" + $(this).attr("name") + "']"
      $(group).prop "checked", false
      $(this).prop "checked", true
    else
      $(this).prop "checked", false
    return

#drop-down header
  $("#rotate").click ->
    $('.header-top').toggleClass "heig"

#google maps
  lat = 49.87213
  lng = 23.92897
  myLatlng = new google.maps.LatLng(lat, lng)
  myOptions =
    zoom: 16
    center: myLatlng
    scrollwheel: false
    mapTypeId: google.maps.MapTypeId.ROADMAP


  map = new google.maps.Map(document.getElementById("map"), myOptions)
  marker = new google.maps.Marker(
    position: myLatlng
    map: map
    title: "Wood Technic"
    icon: '/assets/logo-for-map.png'
  )
#order modal
  $('#OrderModal').foundation()

#$(document).ready(ready)
#$(document).on('page:load', ready)





