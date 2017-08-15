class HomeController < ApplicationController
  def index
    @projects = Project.all
    @skills = Skill.all
    @blogs = Blog.all
    render :index
  end
end
