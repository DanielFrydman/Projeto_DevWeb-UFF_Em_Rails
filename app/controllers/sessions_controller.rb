class SessionsController < ApplicationController
  layout false
  include SessionsHelper 

  def login
    session[:user_id] = nil
  end

  def create
    @user = User.find_by(username: login_params['username'])

    if @user.present? && @user.authenticate(login_params['password'])
      sign_in
      return redirect_to admins_path
    end

    redirect_to root_path, alert: 'Invalid username or password...'
  end

  private

  def login_params
    params.require(:session).permit('username', 'password')
  end
end
