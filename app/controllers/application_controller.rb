class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user_posts
    current_user.posts
  end
end
