ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :enable_starttls_auto => true,
  :port                 => 587,
  :domain               => "heartme.heroku.com", 
  :authentication       => :plain,
  :user_name            => "kkxlkkxllb",
  :password             => "kkxlkkxllb225"
}
ActionMailer::Base.default_url_options[:host] = "http://heartme.heroku.com"