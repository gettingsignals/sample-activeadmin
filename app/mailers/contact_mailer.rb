class ContactMailer < ApplicationMailer
  attr_accessor :email, :title, :name
  def contact_mail(email, title, name)
    @email = email
    @title = title
    @name = name
    mail to: @email,
      subject: "【テストメール】 #{title}"
  end
end
