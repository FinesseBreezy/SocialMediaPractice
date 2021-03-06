class ProfilesController < ApplicationController
  def index
    @query_user = Profile.search(params[:search]).order(:created_at)
  end
  def show
    begin
      @user = User.find(params[:id])
      @search_user = @user
      @posts = @user.posts
      @profile_picture = @user.profile_picture
    rescue ActiveRecord::RecordNotFound #customer with that id cannot be found
      redirect_to '/posts/'
    end
  end
end
