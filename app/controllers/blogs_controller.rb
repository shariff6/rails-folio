class BlogsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :save]
before_action :before_filter, only: [:new, :create, :edit, :save]
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
  def show
    @blog = Blog.find(params[:id])
  end

private

def blog_params
  params.require(:blog).permit(:title, :blog)
end
def before_filter
  if user_signed_in?
    redirect_to root_path unless current_user.email == ('shariff.mohammed.a@gmail.com')
    else
      redirect_to new_user_session_path
  end
end

end
