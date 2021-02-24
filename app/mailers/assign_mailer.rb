class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def change_owner(user)
    @email = user.email
    mail to: @email, subject: "You're currently assigned to the team leader"
  end
end