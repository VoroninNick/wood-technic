# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

navigateTab = (event) ->
  url = $(event.target).attr("href")
  target = url.split("#")[1]
  if target.substr(0, 3) is "tab"
    state = tab: target.substr(3)
    selectTab "LOOK_MY_ID", state.tab #<-- change the tab
    history.pushState state, null, url #<-- change the url
    event.preventDefault()
  return

#$(document).on 'ready page:load', ->
ready = ->
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

#tabs on production
#  $("#myTabs").on "toggled", (event, tab) ->
#    console.log tab
#    return
  $("#myTabs").on "click", navigateTab


  $("#rotate").click ->
    $('.header-top').toggleClass "heig"
#    return
#
#  return
  # main banner
$(document).ready(ready)
$(document).on('page:load', ready)



