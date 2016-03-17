# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->

	# destroy remote modals after hidden
	$('body').on 'hidden.bs.modal', '#defaultModal', ->
		$(this).removeData 'bs.modal'
		return
