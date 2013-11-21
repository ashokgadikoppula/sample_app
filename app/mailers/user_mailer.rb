class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"
@fname = user.first_name
    @lname = user.last_name 
    attachments['free_book.pdf'] = File.read('/home/hemanth/Desktop/RailsDocs/index.html')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send_password.subject
  #
  def send_password
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
