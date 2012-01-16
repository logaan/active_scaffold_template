class Admin::AdminsController < BackEndController
  active_scaffold :admin do |config|
    config.columns.add [:email, :password, :password_confirmation]

    config.columns[:password].form_ui = :password
    config.columns[:password_confirmation].form_ui = :password

    config.list.columns   = [:email, :created_at]

    config.show.columns.remove [:password, :password_confirmation, :encrypted_password]

    config.create.columns = [:email, :password, :password_confirmation]
    config.update.columns = [:email, :password, :password_confirmation]
  end
end
