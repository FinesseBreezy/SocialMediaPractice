class ProfilesController < ApplicationController
  def show
    @current_user = current_user
    @posts = current_user.posts
  end
end
