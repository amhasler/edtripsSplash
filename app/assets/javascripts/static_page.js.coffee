# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.backstretch "/assets/bg_blur.jpg"

$('nav a').click (event) ->

$(window).hashchange ->
  hash = location.hash

  $('section').addClass('hide')

  $(hash).removeClass('hide')
    

  $("html, body").animate({ scrollTop: $(document).height()-$(window).height() }, 1000)

  if hash is not "#about" or hash is not "#preview"
  	$('html, body').animate({scrollTop:0}, 'slow')

  $(window).hashchange



$(window).load ->
  hash = location.hash

  $('section').addClass('hide')

  $(hash).removeClass('hide')

  $("html, body").animate({ scrollTop: $(document).height()-$(window).height() }, 1000)

  if hash is not "#about" or hash is not "#preview"
  	$('html, body').animate({scrollTop:0}, 'slow')

