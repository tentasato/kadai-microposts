class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
   private

  def require_user_logged_in
    unless logged_in?
     redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_favored_microposts = user.favored_microposts.count
    # @count_favoring_users = user.favoring_users.count
  end
end
