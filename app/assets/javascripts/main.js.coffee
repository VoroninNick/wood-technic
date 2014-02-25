# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


#$(document).on 'ready page:load', ->
ready = ->
  $(".fancybox").fancybox()
#  main banner
  $(".bxslider").bxSlider
    mode: 'fade'
#    auto: true
    onSliderLoad: ->
      $('.link-to-item').addClass('animated slideInLeft')
      $('.ban-header').addClass('animated slideInDown')
      $('.ban-content').addClass('animated slideInLeft')
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





  $("#rotate").click ->
    $('.header-top').toggleClass "heig"
#    return
#
#  return
  # main banner

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

$(document).ready(ready)
$(document).on('page:load', ready)



