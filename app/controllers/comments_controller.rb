class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :save]
def new
  @blog = Blog.find(params[:blog_id])
  @comment = @blog.comments.new
end
def create
  @blog = Blog.find(params[:blog_id])
  @comment = @blog.comments.new(comment_params)
  if @comment.save
     flash.now[:notice] = 'Message sent!'
    respond_to do |format|
      format.html { redirect_to blog_path(@comment.blog) }
      format.js
    end
  else
    render :new
  end
end


private
  def comment_params
    params.require(:comment).permit(:name,  :comment)
  end
end
