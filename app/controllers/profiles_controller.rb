class ProfilesController < ApplicationController
  def show
    @current_user = current_user
    @posts = current_user.posts
    @profile_picture = current_user.profile_picture
  end
end
