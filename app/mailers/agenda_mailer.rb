class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda
    @email = @agenda.team.users
    mail to: @email, subject: "アジェンダの削除のお知らせ"
  end
end
