module SessionsHelper
<<<<<<< ae283d55fc0f7269df712cc896dcfcad71b01b16
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        current_user.present?
    end
end
=======
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end

end
>>>>>>> ログアウト機能実装
