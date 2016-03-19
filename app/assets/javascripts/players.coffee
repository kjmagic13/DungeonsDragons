# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

	# $('.best_in_place').bind 'ajax:success', (event, data) ->
	# 	if $(this).hasClass('reload-modifiers')
	# 		$('#modifiers').load $(this).data('bip-url')+'/get-modifiers'
	# 		return
	# 	return

	$('#defaultModal').on 'shown.bs.modal', ->
		$('.focus-here').focus()
		return
