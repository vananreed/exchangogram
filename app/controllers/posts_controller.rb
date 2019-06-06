class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @posts = Post.all
  end

  def create

  end

  private

  def post_params
    params.require(:post).permit(:caption, :photo)
  end
end
