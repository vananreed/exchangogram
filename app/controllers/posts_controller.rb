class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @posts = Post.all.shuffle
  end

  def create
    @post = Post.create(post_params.merge(user: current_user))
    flash[:alert] = "Upload Error: #{@post.errors.full_messages.join(", ")}" unless @post.persisted?
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:caption, :photo)
  end
end
