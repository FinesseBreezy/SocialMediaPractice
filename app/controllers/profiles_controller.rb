class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @current_user = @user
    @posts = @user.posts
    @profile_picture = @user.profile_picture
  end
end
