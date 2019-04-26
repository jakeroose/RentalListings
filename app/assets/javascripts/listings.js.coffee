# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "page:change", ->
  # hover effect for listings index
  $('.listing-container').mouseover ->
    $(this).css('box-shadow', '0 3px 5px #bbb')
  $('.listing-container').mouseout ->
    $(this).css('box-shadow', '0 0 3px #bbb')

  # toggle delete link for images
  $('.form-image').hover ->
    $(this).find('.delete-image').toggle()
