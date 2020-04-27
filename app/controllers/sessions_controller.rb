class SessionsController < ApplicationController
<<<<<<< ae283d55fc0f7269df712cc896dcfcad71b01b16
  def new
  end

=======

  def new
  end
  
>>>>>>> ログアウト機能実装
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      flash[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
<<<<<<< ae283d55fc0f7269df712cc896dcfcad71b01b16
  
end
=======

end
>>>>>>> ログアウト機能実装
