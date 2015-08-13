class SystemMailer < ApplicationMailer
  def site_created(email, nom, id)
    @email = email
    @nom = nom
    @id = id

    mail(to: @email, subject: "Création d'un espace")
  end
end
