if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV["app19338447@heroku.com"],
    :password       => ENV["dbv2urfp"],
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end