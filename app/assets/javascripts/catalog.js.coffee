
$(document).ready ->



  # ===================================================== drop-down header
  $("#rotate").click ->
    $('.header-top').toggleClass "heig"


  # =====================================================  init tabs
  $("#tab-container").easytabs()
  $("#mdf-tab-container").easytabs()

  # =====================================================  checkbox group
  $("input:checkbox").click ->
    if $(this).is(":checked")
      group = "input:checkbox[name='" + $(this).attr("name") + "']"
      $(group).prop "checked", false
      $(this).prop "checked", true
    else
      $(this).prop "checked", false
    return


  # ===================================================== enter doors
  $(".product-door").bxSlider
    pagerCustom: "#product-button"
    mode: 'fade'
    controls: 'false'

  # ===================================================== enter doors
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

  # =====================================================  carousel for louver doors
  $("#louver_door_slider").owlCarousel
    items: 3 #10 items above 1000px browser width
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


  # =====================================================  louver doors prev image and set attr
  $("#louver_door_slider li a").click (event)->
    event.preventDefault()
    mainImage = $(this).attr("href") #Find Image Name
    mainImage = mainImage.replace("image_large", "image_original");
    $(".d_v_image img").attr src: mainImage
    $(".d_v_image img").parent().attr href: mainImage