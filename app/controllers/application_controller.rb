class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # ↓ SessionsHelperを全コントローラから使えるようにする
  include SessionsHelper
end
