class CommentMailer < ActionMailer::Base
  default :from => "visiter@heartme.com"
  def contact_to_me(comment)
    @comment = comment
    mail(:to => "heartme.hero@gmail.com",:subject => "Visiter Comment")
  end
end
