# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'click', '#search', () ->
  search_term= $('#number').val()
  $.ajax '/search.html'
  type: 'GET'
  data: {
    search: search_term,
    template: false
  }
  success:(data, jqxhr, textStatus) ->
    $('#table').html data
    alert(2)

  error:(jqxhr, textStatus, errorThrown) ->
			$.jGrowl 'Something went wrong.', life:2000
