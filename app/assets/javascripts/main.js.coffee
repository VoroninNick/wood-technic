# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


#$(document).on 'ready page:load', ->
$(document).ready ->
  #Program a custom submit function for the form
#  $("form#call_order_form").submit (event) ->
#
#    #disable the default form submission
#    event.preventDefault()
#    alert($(this).attr("action"))
#    #grab all form data
#    formData = $(this).serialize()
#    $.ajax
#      url: $(this).attr("action")
#      type: "POST"
#      data: formData
#      async: false
#      cache: false
#      contentType: false
#      processData: false
#      success: (returndata) ->
#        alert returndata
#        return
#
#    false
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


      #act on result.
    false # prevents normal behaviour
#
#  $("#call_order_form").submit (event) ->
#    event.preventDefault()
#    valuesToSubmit = $(this).serialize()
#    #sumbits it to the given url of the form
#    # you want a difference between normal and ajax-calls, and json is standard
#    alert($(this).attr("action"))
#    $.ajax
#      type: "POST"
#      url: $(this).attr("action"),
#      data: valuesToSubmit,
#      dataType: "JSON",
#      success: (data,textstatus) ->
#        alert("SUPER!!!!!!")
#
#    #act on result.
#    false # prevents normal behaviour


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

  $("#tab-container").easytabs()
  $("#mdf-tab-container").easytabs()

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





