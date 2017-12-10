class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # ↓ SessionsHelperを全コントローラから使えるようにする
  include SessionsHelper
  before_action :logged_in_user

  def logged_in_user
    unless logged_in?
      redirect_to login_url
    end
  end
end
