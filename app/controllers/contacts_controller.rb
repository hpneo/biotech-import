class ContactsController < ApplicationController
  def create
    contact = Contact.new(params.require(:contact).permit(:fullname, :phone, :address))

    response = {}

    if contact.save
      response[:status] = 200
      response[:message] = 'Contacto creado correctamente'
    else
      response[:status] = 500
      response[:message] = "Error al crear contacto:\n#{contact.errors.full_messages.join("\n")}"
    end

    render json: response
  end
end
