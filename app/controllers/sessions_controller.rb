class SessionsController < ApplicationController
  def new
  end

  def create
    # userをDBから引っ張ってくる
    user = User.find_by(email: params[:session][:email].downcase)
    # userがDBにいる かつ　認証が成功した場合
    if user && user.authenticate(params[:session][:password])

    else
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  end

  def destroy
  end
end