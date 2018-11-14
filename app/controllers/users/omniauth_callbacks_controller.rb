class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.from_omniauth request.env["omniauth.auth"]
    if @user.nil?
      flash[:notice] = t ".error"
    else
      sign_in @user
      flash[:notice] = t ".login_succes"
    end
    redirect_to users_path
  end
end
