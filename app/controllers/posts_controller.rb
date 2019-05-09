class PostsController < ApplicationController
  before_action :set_post, only: [ :edit, :update, :destroy]

  def new
    @post = current_user.posts.new
  end

  def edit
  end

  def create
    @post = current_user.posts.new(post_params)
      if @post.save
       redirect_to root_path, notice: 'Post was successfully created.' 
      else
        render :new 
     end
  end

  def update
    if @post.update(post_params)
      redirect_to root_path, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: 'Post was successfully destroyed.' 
  end

  private
    def set_post
      @post = current_user.posts.find_by_id(params[:id])
      if @post.nil?
        redirect_back(fallback_location: root_path)
      end
    end
    def post_params
      params.require(:post).permit(:post_detail , :user_id)
    end
end
