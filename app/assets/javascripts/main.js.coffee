# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  # ===================================================== init fancybox
  $(".fancybox").fancybox()

  $.fancybox ->
    "frameWidth" : 1100,
    'width': 1100,
    'autoDimensions': false,
    'autoSize': false
  # ===================================================== init reveal
#
#  $('#call_order_form, #order-louver-form, #order-door-form').data('reveal-init', {
#    animation: 'fade',
#    animation_speed: 250,
#    close_on_background_click: false,
#    close_on_esc: false,
#    dismiss_modal_class: 'close-reveal-modal',
#    bg_class: 'reveal-modal-bg',
#    bg : $('.reveal-modal-bg'),
#    css : {
#      open : {
#        'opacity': 0,
#        'visibility': 'visible',
#        'display' : 'block'
#      },
#      close : {
#        'opacity': 1,
#        'visibility': 'hidden',
#        'display': 'none'
#      }
#    }
#  });
#
#  $('a.close-reveal-modal, .reveal-modal-bg').click ->
#    $('#call_order_form').foundation('reveal', 'close')
#    $('#order-louver-form').foundation('reveal', 'close')
#    $('#order-door-form').foundation('reveal', 'close')
#
#
#  $('a.link-to-call-order').click (e) ->
#    e.preventDefault()
#    window.location.hash = '' # clearf url after click on link
#    $('#call_order_form').foundation('reveal', 'open')
#
#  $('a.link-to-order-louver').click (e) ->
#    e.preventDefault()
#    window.location.hash = '' # clearf url after click on link
#    $('#order-louver-form').foundation('reveal', 'open')
#
#  $('a.link-to-order-door').click (e) ->
#    e.preventDefault()
#    window.location.hash = '' # clearf url after click on link
#    $('#order-door-form').foundation('reveal', 'open')



  # ===================================================== footer hover on voroninstudio
  $(".vbw-image svg").hover (->
    $("li.vbw-text p:first-child a").css({'color': '#94d60a', 'border-bottom': '1px solid rgba(148, 214, 10, 0.8)' })
    $(".vbw-image svg path").css({'fill': 'rgba(148, 214, 10, 1)'})
    return
  ),->
    $("li.vbw-text p:first-child a").css({'color': 'inherit', 'border-bottom': '1px solid rgba(183, 183, 183, 0.3)' })
    $(".vbw-image svg path").css({'fill': 'rgba(183, 183, 183, 1)'})
    return
  $("li.vbw-text p:first-child a").hover (->
    $("li.vbw-text p:first-child a").css({'color': '#94d60a', 'border-bottom': '1px solid rgba(148, 214, 10, 0.8)' })
    $(".vbw-image svg path").css({'fill': 'rgba(148, 214, 10, 1)'})
    return
  ),->
    $("li.vbw-text p:first-child a").css({'color': 'inherit', 'border-bottom': '1px solid rgba(183, 183, 183, 0.3)' })
    $(".vbw-image svg path").css({'fill': 'rgba(183, 183, 183, 1)'})
    return

  # ===================================================== init main banner
  $(".bxslider").bxSlider
    mode: 'fade'
    auto: true
    onSliderLoad: ->
      $('.link-to-item').addClass('animated slideInLeft')
      $('.ban-header').addClass('animated slideInDown')
      $('.ban-content').addClass('animated slideInLeft')


  # ===================================================== init main page carousel
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


  # ===================================================== init google maps
  lat = 49.869030
  lng = 23.927616
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









