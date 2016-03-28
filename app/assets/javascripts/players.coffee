# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->

	$('[data-toggle="popover"]').popover()
	$('[data-toggle="tooltip"]').tooltip()

	reloadPlayer = ($elem) ->
		if $elem.hasClass('reload-player')
			$('#modifiers').load $elem.data('bip-url') + '/get-modifiers'
			$('#skills').load $elem.data('bip-url') + '/get-skills'
		return

	$('body').on 'ajax:success', '.best_in_place', (event, data) ->
		reloadPlayer $(this)
		return

	$('#defaultModal').on 'shown.bs.modal', ->
		$('.focus-here').focus()
		return
