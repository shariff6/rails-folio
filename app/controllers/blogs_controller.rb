class BlogsController < ApplicationController
before_action :authenticate_user!
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "Blog was succesfully saved"
      redirect_to root_path
    else
      flash[:danger] = "Error Saving this blog"
    end
  end

private

def blog_params
  params.require(:blog).permit(:title, :blog)
end

end
