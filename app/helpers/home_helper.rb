module HomeHelper

	def enlace (nombre,accion)
		link_to nombre,:action=>accion
	end

	def menu_navegacion (opcion)
		html = '<ul class="nav nav-pills">'
		opcion.each do |nombre, accion| 
		html += '<li>' + enlace(nombre,accion) + '</li>' 
		end
		html += '</ul>'
		return html.html_safe
	end
	
	def mostrar_imagen (nombre,size)
		image_tag nombre, :size=>size
	end

	def button (nombre,accion,metodo,clase)
		button_to nombre, {:action=>accion}, 
	:method=>metodo,  :class=>clase
	end

	def hay_imagen?
		if content_for? (:imagen)
			return true
		end
	end

end
