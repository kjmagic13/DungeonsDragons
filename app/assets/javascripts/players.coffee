# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

	# $('#rip-armor').bind 'success.rest-in-place', (event, data) ->
	# 	alert 'anything?'
	# 	return

	$('#defaultModal').on 'shown.bs.modal', ->
		$('.focus-here').focus()
		return
