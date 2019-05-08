class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  # Show all comments of an specific post
  def for_post
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    @comment = @post.comments.new(user_id: current_user.id)
  end

  def edit
  end

  def create
    @post = Post.find(params[:comment][:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to  for_post_comments_path(post_id: @post.id), notice: 'Comment was successfully created.' 
    else
      render :new 
   end
  end

  def update
    if @comment.update(comment_params)
      redirect_to for_post_comments_path(post_id: @post.id), notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post = @comment.post
    @comment.destroy
    redirect_to for_post_comments_path(post_id: @post.id), notice: 'Comment was successfully destroyed.' 
  end

  private
    def set_comment
      @comment = current_user.comments.find_by_id(params[:id])      
      if @comment.nil?
        redirect_back(fallback_location: root_path)
      end
    end

    def comment_params
      params.require(:comment).permit(:comment_detail , :user_id, :post_id)
    end
end
