class HomeController < ApplicationController
layout "application", :except => :contacto

  def index
     @titulo = "Estamos en Inicio"
  end

  def contacto
    @titulo = "Formulario de Contacto"
    
    #enviar correo
    if request.post?
      
        if Email.micorreo(params).deliver and Email.enviar(params).deliver
          flash.now[:noticia] = "Enviado correctamente"
        else

        flash.now[:error] = "No se ha enviado"
      end  
    end
  end

  def localizacion
    @titulo = "Estamos en Localización"
  end

  def quienes_somos
    @titulo = "Estamos en Quienes Somos"
  end

  def servicios
    @titulo = "Servicios"
  end

end
