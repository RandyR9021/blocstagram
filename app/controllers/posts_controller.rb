class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    @posts = Post.find(params[:id])
  end

  def create
    @posts = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Post was saved successfully."
    else
      flash[:error] = "There was an error saving your Post. Please try again."
      render :new
    end
  end

  end

  def new
    @post = Post.new(post_params)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body,:image)
  end
