module SessionsHelper
  def sign_in
    session[:user_id] = @user.id
  end

  def load_user
    user_id = session[:user_id]

    if user_id.nil?
      return redirect_to root_path, alert: 'Você precisa estar logado.'
    end

    @current_user = User.find(session[:user_id])
  end
end
