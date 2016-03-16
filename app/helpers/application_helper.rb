module ApplicationHelper

	def rest_in_place( obj, attr, formtype=:input, span=false )
		elem = span ? :span : :div
		content_tag elem, obj.send(attr), class: 'rest-in-place', data: { attribute: attr, formtype: formtype }
	end

end
