class HomeController < ApplicationController
  helper_method :admin_user
  def index
    @projects = Project.all
    @skills = Skill.all
    @blogs = Blog.all
    render :index
  end

private

def admin_user
  if current_user.email == ('shariff.mohammed.a@gmail.com')
    return true
  end
end
end
