class Email < ActionMailer::Base
  default from: "moisesdonoso@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #

  def micorreo(parametros)
    enviar_correo(parametros,"moisesdonoso@gmail.com","Nuevo mensaje")
  end

  def enviar(parametros)
    enviar_correo(parametros,parametros[:email],"Gracias por su mensaje")
  end

  private 

  def enviar_correo(parametros,email,asunto)

    @nombre = parametros[:nombre]
    @email = parametros[:email]
    @asunto = parametros[:asunto]
    @mensaje = parametros[:mensaje]

    mail :to  => email, :subject => asunto

  end 

end
